#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct sockaddr_in6 {scalar_t__ sin_family; scalar_t__ sin6_family; int sin_len; void* sin_port; TYPE_1__ sin_addr; void* sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; scalar_t__ sin6_family; int sin_len; void* sin_port; TYPE_1__ sin_addr; void* sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct pnfsdsfile {int dsf_dir; char* dsf_filename; struct sockaddr_in6 dsf_sin; struct sockaddr_in6 dsf_sin6; int /*<<< orphan*/  dsf_fh; } ;
struct addrinfo {int ai_addrlen; TYPE_2__* ai_addr; struct addrinfo* ai_next; } ;
typedef  int ssize_t ;
typedef  void* in_port_t ;
typedef  int /*<<< orphan*/  hostn ;
typedef  int /*<<< orphan*/  fhandle_t ;
typedef  int /*<<< orphan*/  dsfile ;
typedef  int /*<<< orphan*/  adsin6 ;
typedef  int /*<<< orphan*/  adsin ;
struct TYPE_4__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  EXTATTR_NAMESPACE_SYSTEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NFSDEV_MAXMIRRORS ; 
 int NI_MAXHOST ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char*,struct pnfsdsfile*,int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,char*,struct pnfsdsfile*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct addrinfo**) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (struct sockaddr*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  longopts ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_in6*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 char* FUNC13 (char*,char) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int
FUNC16(int argc, char *argv[])
{
	struct addrinfo *res, *ad, *newres;
	struct sockaddr_in *sin, adsin;
	struct sockaddr_in6 *sin6, adsin6;
	char hostn[2 * NI_MAXHOST + 2], *cp;
	struct pnfsdsfile dsfile[NFSDEV_MAXMIRRORS];
	int ch, dosetxattr, i, mirrorcnt, mirrorit, quiet, zerods, zerofh;
	in_port_t tport;
	ssize_t xattrsize, xattrsize2;

	zerods = 0;
	zerofh = 0;
	mirrorit = 0;
	quiet = 0;
	dosetxattr = 0;
	res = NULL;
	newres = NULL;
	cp = NULL;
	while ((ch = FUNC9(argc, argv, "c:m:qr:s:z", longopts, NULL)) !=
	    -1) {
		switch (ch) {
		case 'c':
			/* Replace the first DS server with the second one. */
			if (zerofh != 0 || zerods != 0 || mirrorit != 0 ||
			    newres != NULL || res != NULL)
				FUNC3(1, "-c, -m, -r, -s and -z are mutually "
				    "exclusive and only can be used once");
			FUNC14(hostn, optarg, 2 * NI_MAXHOST + 2);
			cp = FUNC13(hostn, ',');
			if (cp == NULL)
				FUNC3(1, "Bad -c argument %s", hostn);
			*cp = '\0';
			if (FUNC6(hostn, NULL, NULL, &res) != 0)
				FUNC3(1, "Can't get IP# for %s", hostn);
			*cp++ = ',';
			if (FUNC6(cp, NULL, NULL, &newres) != 0)
				FUNC3(1, "Can't get IP# for %s", cp);
			break;
		case 'm':
			/* Add 0.0.0.0 entries up to mirror level. */
			if (zerofh != 0 || zerods != 0 || mirrorit != 0 ||
			    newres != NULL || res != NULL)
				FUNC3(1, "-c, -m, -r, -s and -z are mutually "
				    "exclusive and only can be used once");
			mirrorit = FUNC1(optarg);
			if (mirrorit < 2 || mirrorit > NFSDEV_MAXMIRRORS)
				FUNC3(1, "-m %d out of range", mirrorit);
			break;
		case 'q':
			quiet = 1;
			break;
		case 'r':
			/* Reset the DS server in a mirror with 0.0.0.0. */
			if (zerofh != 0 || zerods != 0 || mirrorit != 0 ||
			    newres != NULL || res != NULL)
				FUNC3(1, "-c, -m, -r, -s and -z are mutually "
				    "exclusive and only can be used once");
			zerods = 1;
			/* Translate the server name to an IP address. */
			if (FUNC6(optarg, NULL, NULL, &res) != 0)
				FUNC3(1, "Can't get IP# for %s", optarg);
			break;
		case 's':
			/* Translate the server name to an IP address. */
			if (zerods != 0 || mirrorit != 0 || newres != NULL ||
			    res != NULL)
				FUNC3(1, "-c, -m and -r are mutually exclusive "
				    "from use with -s and -z");
			if (FUNC6(optarg, NULL, NULL, &res) != 0)
				FUNC3(1, "Can't get IP# for %s", optarg);
			break;
		case 'z':
			if (zerofh != 0 || zerods != 0 || mirrorit != 0 ||
			    newres != NULL)
				FUNC3(1, "-c, -m and -r are mutually exclusive "
				    "from use with -s and -z");
			zerofh = 1;
			break;
		default:
			FUNC15();
		}
	}
	argc -= optind;
	if (argc != 1)
		FUNC15();
	argv += optind;

	/*
	 * The host address and directory where the data storage file is
	 * located is in the extended attribute "pnfsd.dsfile".
	 */
	xattrsize = FUNC4(*argv, EXTATTR_NAMESPACE_SYSTEM,
	    "pnfsd.dsfile", dsfile, sizeof(dsfile));
	mirrorcnt = xattrsize / sizeof(struct pnfsdsfile);
	xattrsize2 = mirrorcnt * sizeof(struct pnfsdsfile);
	if (mirrorcnt < 1 || xattrsize != xattrsize2)
		FUNC2(1, "Can't get extattr pnfsd.dsfile for %s", *argv);

	if (quiet == 0)
		FUNC12("%s:\t", *argv);
	for (i = 0; i < mirrorcnt; i++) {
		if (i > 0 && quiet == 0)
			FUNC12("\t");
		/* Do the zerofh option. You must be root. */
		if (zerofh != 0) {
			if (FUNC7() != 0)
				FUNC3(1, "Must be root/su to zerofh");
	
			/*
			 * Do it for the server specified by -s/--ds or all
			 * servers, if -s/--ds was not specified.
			 */
			sin = &dsfile[i].dsf_sin;
			sin6 = &dsfile[i].dsf_sin6;
			ad = res;
			while (ad != NULL) {
				if (ad->ai_addr->sa_family == AF_INET &&
				    sin->sin_family == AF_INET &&
				    ad->ai_addrlen >= sizeof(adsin)) {
					FUNC10(&adsin, ad->ai_addr,
					    sizeof(adsin));
					if (sin->sin_addr.s_addr ==
					    adsin.sin_addr.s_addr)
						break;
				}
				if (ad->ai_addr->sa_family == AF_INET6 &&
				    sin6->sin6_family == AF_INET6 &&
				    ad->ai_addrlen >= sizeof(adsin6)) {
					FUNC10(&adsin6, ad->ai_addr,
					    sizeof(adsin6));
					if (FUNC0(&sin6->sin6_addr,
					    &adsin6.sin6_addr))
						break;
				}
				ad = ad->ai_next;
			}
			if (res == NULL || ad != NULL) {
				FUNC11(&dsfile[i].dsf_fh, 0, sizeof(fhandle_t));
				dosetxattr = 1;
			}
		}
	
		/* Do the zerods option. You must be root. */
		if (zerods != 0 && mirrorcnt > 1) {
			if (FUNC7() != 0)
				FUNC3(1, "Must be root/su to zerods");
	
			/*
			 * Do it for the server specified.
			 */
			sin = &dsfile[i].dsf_sin;
			sin6 = &dsfile[i].dsf_sin6;
			ad = res;
			while (ad != NULL) {
				if (ad->ai_addr->sa_family == AF_INET &&
				    sin->sin_family == AF_INET &&
				    ad->ai_addrlen >= sizeof(adsin)) {
					FUNC10(&adsin, ad->ai_addr,
					    sizeof(adsin));
					if (sin->sin_addr.s_addr ==
					    adsin.sin_addr.s_addr)
						break;
				}
				if (ad->ai_addr->sa_family == AF_INET6 &&
				    sin6->sin6_family == AF_INET6 &&
				    ad->ai_addrlen >= sizeof(adsin6)) {
					FUNC10(&adsin6, ad->ai_addr,
					    sizeof(adsin6));
					if (FUNC0(&sin6->sin6_addr,
					    &adsin6.sin6_addr))
						break;
				}
				ad = ad->ai_next;
			}
			if (ad != NULL) {
				sin->sin_family = AF_INET;
				sin->sin_len = sizeof(*sin);
				sin->sin_port = 0;
				sin->sin_addr.s_addr = 0;
				dosetxattr = 1;
			}
		}
	
		/* Do the -c option to replace the DS host address. */
		if (newres != NULL) {
			if (FUNC7() != 0)
				FUNC3(1, "Must be root/su to replace the host"
				    " addr");
	
			/*
			 * Check that the old host address matches.
			 */
			sin = &dsfile[i].dsf_sin;
			sin6 = &dsfile[i].dsf_sin6;
			ad = res;
			while (ad != NULL) {
				if (ad->ai_addr->sa_family == AF_INET &&
				    sin->sin_family == AF_INET &&
				    ad->ai_addrlen >= sizeof(adsin)) {
					FUNC10(&adsin, ad->ai_addr,
					    sizeof(adsin));
					if (sin->sin_addr.s_addr ==
					    adsin.sin_addr.s_addr)
						break;
				}
				if (ad->ai_addr->sa_family == AF_INET6 &&
				    sin6->sin6_family == AF_INET6 &&
				    ad->ai_addrlen >= sizeof(adsin6)) {
					FUNC10(&adsin6, ad->ai_addr,
					    sizeof(adsin6));
					if (FUNC0(&sin6->sin6_addr,
					    &adsin6.sin6_addr))
						break;
				}
				ad = ad->ai_next;
			}
			if (ad != NULL) {
				if (sin->sin_family == AF_INET)
					tport = sin->sin_port;
				else
					tport = sin6->sin6_port;
				/*
				 * We have a match, so replace it with the first
				 * AF_INET or AF_INET6 address in the newres
				 * list.
				 */
				while (newres->ai_addr->sa_family != AF_INET &&
				    newres->ai_addr->sa_family != AF_INET6) {
					newres = newres->ai_next;
					if (newres == NULL)
						FUNC3(1, "Hostname %s has no"
						    " IP#", cp);
				}
				if (newres->ai_addr->sa_family == AF_INET) {
					FUNC10(sin, newres->ai_addr,
					    sizeof(*sin));
					sin->sin_port = tport;
				} else if (newres->ai_addr->sa_family ==
				    AF_INET6) {
					FUNC10(sin6, newres->ai_addr,
					    sizeof(*sin6));
					sin6->sin6_port = tport;
				}
				dosetxattr = 1;
			}
		}
	
		if (quiet == 0) {
			/* Translate the IP address to a hostname. */
			if (FUNC8((struct sockaddr *)&dsfile[i].dsf_sin,
			    dsfile[i].dsf_sin.sin_len, hostn, sizeof(hostn),
			    NULL, 0, 0) < 0)
				FUNC2(1, "Can't get hostname");
			FUNC12("%s\tds%d/%s", hostn, dsfile[i].dsf_dir,
			    dsfile[i].dsf_filename);
		}
	}
	/* Add entrie(s) with IP address set to 0.0.0.0, as required. */
	for (i = mirrorcnt; i < mirrorit; i++) {
		dsfile[i] = dsfile[0];
		dsfile[i].dsf_sin.sin_family = AF_INET;
		dsfile[i].dsf_sin.sin_len = sizeof(struct sockaddr_in);
		dsfile[i].dsf_sin.sin_addr.s_addr = 0;
		dsfile[i].dsf_sin.sin_port = 0;
		if (quiet == 0) {
			/* Print out the 0.0.0.0 entry. */
			FUNC12("\t0.0.0.0\tds%d/%s", dsfile[i].dsf_dir,
			    dsfile[i].dsf_filename);
		}
	}
	if (mirrorit > mirrorcnt) {
		xattrsize = mirrorit * sizeof(struct pnfsdsfile);
		dosetxattr = 1;
	}
	if (quiet == 0)
		FUNC12("\n");

	if (dosetxattr != 0 && FUNC5(*argv, EXTATTR_NAMESPACE_SYSTEM,
	    "pnfsd.dsfile", dsfile, xattrsize) != xattrsize)
		FUNC2(1, "Can't set pnfsd.dsfile");
}