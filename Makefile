# Generated automatically from Makefile.in by configure.
##############################################################
#  Makefile for Linux Logo      -- by Vince Weaver           #
#                                                            #
#  Updated to use gnu autoconf 27 March 1999                 #
#                                                            #
##############################################################

SHELL = /bin/sh
VPATH = ./.

subdirs = @subdirs@
top_srcdir = ./.
srcdir = ./.
prefix = /usr/local
exec_prefix = ${prefix}
bindir = $(exec_prefix)/bin
infodir = $(prefix)/info
libdir = $(prefix)/lib/gnudl
mandir = $(prefix)/man/man1

BUILD_OS = LINUX
BUILD_CPU = i586

CC = gcc
CPPFLAGS = 
CFLAGS = -DBUILD_OS=$(BUILD_OS) $(CPPFLAGS) -g -O2
LDFLAGS = 
LIBS = 
INSTALL = /bin/install -c

all:
	cd src && $(MAKE) all

install:
	$(top_srcdir)/mkinstalldirs $(bindir)
	cd src && $(MAKE) install
	$(INSTALL) linux_logo.1 $(mandir)
	
clean:
	/bin/rm -f *~
	cd src && $(MAKE) clean
	
distclean:	clean
	/bin/rm -f Makefile config.h config.status config.cache config.log
	cd src && $(MAKE) distclean
	
# automatic re-running of configure if the ocnfigure.in file has changed
${srcdir}/configure:	configure.in aclocal.m4
	cd ${srcdir} && autoconf
	
# autoheader might not change config.h.in, so touch a stamp file
${srcdir}/config.h.in:	stamp-h.in
${srcdir}/stamp-h.in:	configure.in aclocal.m4
	cd ${srcdir} && autoheader
	echo timestamp > ${srcdir}/stamp-h.in
					
config.h:	stamp-h
stamp-h:	config.h.in config.status
	./config.status
Makefile:	Makefile.in config.status
	./config.status
config.status:	configure
	./config.status --recheck
