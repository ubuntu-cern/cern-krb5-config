VERSION := 1
BUILDDIR := build
DEBBUILDDIR := $(BUILDDIR)/cern-krb5-config-$(VERSION)

deb:
	mkdir -p $(DEBBUILDDIR)
	cp cern-krb5.conf $(DEBBUILDDIR)
	cp -rv debian/ $(DEBBUILDDIR)
	( cd $(DEBBUILDDIR) && dpkg-buildpackage -k9FF0CABE -rfakeroot )

clean:
	rm -rf $(BUILDDIR)

.PHONY: clean deb
