#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct statfs {char* f_fstypename; char* f_mntonname; int /*<<< orphan*/  f_mntfromname; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; TYPE_1__ sin_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin6_addr; TYPE_1__ sin_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_7__ {scalar_t__ sin_family; TYPE_2__ sin_addr; } ;
struct pnfsdsfile {TYPE_4__ dsf_sin6; TYPE_3__ dsf_sin; } ;
struct nfsd_pnfsd_args {char* dspath; char* curdspath; char* mdspath; int /*<<< orphan*/  op; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; struct addrinfo* ai_next; int /*<<< orphan*/  ai_addr; void* ai_socktype; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sin6 ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  mirrorlevel ;
typedef  int /*<<< orphan*/  host ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  dsfile ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  EXTATTR_NAMESPACE_SYSTEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ MNAMELEN ; 
 int NFSDEV_MAXMIRRORS ; 
 int /*<<< orphan*/  NFSSVC_PNFSDS ; 
 scalar_t__ NI_MAXHOST ; 
 void* PF_UNSPEC ; 
 int /*<<< orphan*/  PNFSDOP_COPYMR ; 
 void* SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,char*,struct pnfsdsfile*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  longopts ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct nfsd_pnfsd_args*) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC13 (char*,struct stat*) ; 
 scalar_t__ FUNC14 (char*,struct statfs*) ; 
 char* FUNC15 (char*,char) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 

int
FUNC20(int argc, char *argv[])
{
	struct nfsd_pnfsd_args pnfsdarg;
	struct pnfsdsfile dsfile[NFSDEV_MAXMIRRORS];
	struct stat sb;
	struct statfs sf;
	struct addrinfo hints, *res, *nres;
	struct sockaddr_in sin;
	struct sockaddr_in6 sin6;
	ssize_t xattrsize, xattrsize2;
	size_t mirlen;
	int ch, fnd, fndzero, i, migrateit, mirrorcnt, mirrorit, ret;
	int mirrorlevel;
	char host[MNAMELEN + NI_MAXHOST + 2], *cp;

	if (FUNC8() != 0)
		FUNC3(1, "Must be run as root/su");

	mirrorit = migrateit = 0;
	pnfsdarg.dspath = pnfsdarg.curdspath = NULL;
	while ((ch = FUNC9(argc, argv, "m:r:", longopts, NULL)) != -1) {
		switch (ch) {
		case 'm':
			/* Migrate the file from the second DS to the first. */
			if (mirrorit != 0)
				FUNC3(1, "-r and -m are mutually exclusive");
			migrateit = 1;
			pnfsdarg.curdspath = optarg;
			break;
		case 'r':
			/* Mirror the file on the specified DS. */
			if (migrateit != 0)
				FUNC3(1, "-r and -m are mutually exclusive");
			mirrorit = 1;
			pnfsdarg.dspath = optarg;
			break;
		default:
			FUNC19();
		}
	}
	argc -= optind;
	argv += optind;
	if (migrateit != 0) {
		if (argc != 2)
			FUNC19();
		pnfsdarg.dspath = *argv++;
	} else if (argc != 1)
		FUNC19();

	/* Get the pNFS service's mirror level. */
	mirlen = sizeof(mirrorlevel);
	ret = FUNC18("vfs.nfs.pnfsmirror", &mirrorlevel, &mirlen,
	    NULL, 0);
	if (ret < 0)
		FUNC3(1, "Can't get vfs.nfs.pnfsmirror");

	if (pnfsdarg.dspath != NULL && pnfsdarg.curdspath != NULL &&
	    FUNC16(pnfsdarg.dspath, pnfsdarg.curdspath) == 0)
		FUNC3(1, "Can't migrate to same server");

	/*
	 * The host address and directory where the data storage file is
	 * located is in the extended attribute "pnfsd.dsfile".
	 */
	xattrsize = FUNC5(*argv, EXTATTR_NAMESPACE_SYSTEM,
	    "pnfsd.dsfile", dsfile, sizeof(dsfile));
	mirrorcnt = xattrsize / sizeof(struct pnfsdsfile);
	xattrsize2 = mirrorcnt * sizeof(struct pnfsdsfile);
	if (mirrorcnt < 1 || xattrsize != xattrsize2)
		FUNC3(1, "Can't get extattr pnfsd.dsfile for %s", *argv);

	/* See if there is a 0.0.0.0 entry. */
	fndzero = 0;
	for (i = 0; i < mirrorcnt; i++) {
		if (dsfile[i].dsf_sin.sin_family == AF_INET &&
		    dsfile[i].dsf_sin.sin_addr.s_addr == 0)
			fndzero = 1;
	}

	/* If already mirrored for default case, just exit(0); */
	if (mirrorit == 0 && migrateit == 0 && (mirrorlevel < 2 ||
	    (fndzero == 0 && mirrorcnt >= mirrorlevel) ||
	    (fndzero != 0 && mirrorcnt > mirrorlevel)))
		FUNC4(0);

	/* For the "-r" case, there must be a 0.0.0.0 entry. */
	if (mirrorit != 0 && (fndzero == 0 || mirrorlevel < 2 ||
	    mirrorcnt < 2 || mirrorcnt > mirrorlevel))
		FUNC4(0);

	/* For pnfsdarg.dspath set, if it is already in list, just exit(0); */
	if (pnfsdarg.dspath != NULL) {
		/* Check the dspath to see that it's an NFS mount. */
		if (FUNC13(pnfsdarg.dspath, &sb) < 0)
			FUNC3(1, "Can't stat %s", pnfsdarg.dspath);
		if (!FUNC1(sb.st_mode))
			FUNC3(1, "%s is not a directory", pnfsdarg.dspath);
		if (FUNC14(pnfsdarg.dspath, &sf) < 0)
			FUNC3(1, "Can't fsstat %s", pnfsdarg.dspath);
		if (FUNC16(sf.f_fstypename, "nfs") != 0)
			FUNC3(1, "%s is not an NFS mount", pnfsdarg.dspath);
		if (FUNC16(sf.f_mntonname, pnfsdarg.dspath) != 0)
			FUNC3(1, "%s is not the mounted-on dir for the new DS",
			    pnfsdarg.dspath);
	
		/*
		 * Check the IP address of the NFS server against the entrie(s)
		 * in the extended attribute.
		 */
		FUNC17(host, sf.f_mntfromname, sizeof(host));
		cp = FUNC15(host, ':');
		if (cp == NULL)
			FUNC3(1, "No <host>: in mount %s", host);
		*cp = '\0';
		FUNC11(&hints, 0, sizeof(hints));
		hints.ai_family = PF_UNSPEC;
		hints.ai_socktype = SOCK_STREAM;
		if (FUNC7(host, NULL, &hints, &res) != 0)
			FUNC3(1, "Can't get address for %s", host);
		for (i = 0; i < mirrorcnt; i++) {
			nres = res;
			while (nres != NULL) {
				if (dsfile[i].dsf_sin.sin_family ==
				    nres->ai_family) {
					/*
					 * If there is already an entry for this
					 * DS, just exit(0), since copying isn't
					 * required.
					 */
					if (nres->ai_family == AF_INET &&
					    nres->ai_addrlen >= sizeof(sin)) {
						FUNC10(&sin, nres->ai_addr,
						    sizeof(sin));
						if (sin.sin_addr.s_addr ==
						    dsfile[i].dsf_sin.sin_addr.s_addr)
							FUNC4(0);
					} else if (nres->ai_family ==
					    AF_INET6 && nres->ai_addrlen >=
					    sizeof(sin6)) {
						FUNC10(&sin6, nres->ai_addr,
						    sizeof(sin6));
						if (FUNC0(&sin6.sin6_addr,
						    &dsfile[i].dsf_sin6.sin6_addr))
							FUNC4(0);
					}
				}
				nres = nres->ai_next;
			}
		}
		FUNC6(res);
	}

	/* For "-m", the pnfsdarg.curdspath must be in the list. */
	if (pnfsdarg.curdspath != NULL) {
		/* Check pnfsdarg.curdspath to see that it's an NFS mount. */
		if (FUNC13(pnfsdarg.curdspath, &sb) < 0)
			FUNC3(1, "Can't stat %s", pnfsdarg.curdspath);
		if (!FUNC1(sb.st_mode))
			FUNC3(1, "%s is not a directory", pnfsdarg.curdspath);
		if (FUNC14(pnfsdarg.curdspath, &sf) < 0)
			FUNC3(1, "Can't fsstat %s", pnfsdarg.curdspath);
		if (FUNC16(sf.f_fstypename, "nfs") != 0)
			FUNC3(1, "%s is not an NFS mount", pnfsdarg.curdspath);
		if (FUNC16(sf.f_mntonname, pnfsdarg.curdspath) != 0)
			FUNC3(1, "%s is not the mounted-on dir of the cur DS",
			    pnfsdarg.curdspath);
	
		/*
		 * Check the IP address of the NFS server against the entrie(s)
		 * in the extended attribute.
		 */
		FUNC17(host, sf.f_mntfromname, sizeof(host));
		cp = FUNC15(host, ':');
		if (cp == NULL)
			FUNC3(1, "No <host>: in mount %s", host);
		*cp = '\0';
		FUNC11(&hints, 0, sizeof(hints));
		hints.ai_family = PF_UNSPEC;
		hints.ai_socktype = SOCK_STREAM;
		if (FUNC7(host, NULL, &hints, &res) != 0)
			FUNC3(1, "Can't get address for %s", host);
		fnd = 0;
		for (i = 0; i < mirrorcnt && fnd == 0; i++) {
			nres = res;
			while (nres != NULL) {
				if (dsfile[i].dsf_sin.sin_family ==
				    nres->ai_family) {
					/*
					 * Note if the entry is found.
					 */
					if (nres->ai_family == AF_INET &&
					    nres->ai_addrlen >= sizeof(sin)) {
						FUNC10(&sin, nres->ai_addr,
						    sizeof(sin));
						if (sin.sin_addr.s_addr ==
						    dsfile[i].dsf_sin.sin_addr.s_addr) {
							fnd = 1;
							break;
						}
					} else if (nres->ai_family ==
					    AF_INET6 && nres->ai_addrlen >=
					    sizeof(sin6)) {
						FUNC10(&sin6, nres->ai_addr,
						    sizeof(sin6));
						if (FUNC0(&sin6.sin6_addr,
						    &dsfile[i].dsf_sin6.sin6_addr)) {
							fnd = 1;
							break;
						}
					}
				}
				nres = nres->ai_next;
			}
		}
		FUNC6(res);
		/*
		 * If not found just exit(0), since it is not on the
		 * source DS.
		 */
		if (fnd == 0)
			FUNC4(0);
	}

	/* Do the copy via the nfssvc() syscall. */
	pnfsdarg.op = PNFSDOP_COPYMR;
	pnfsdarg.mdspath = *argv;
	ret = FUNC12(NFSSVC_PNFSDS, &pnfsdarg);
	if (ret < 0 && errno != EEXIST)
		FUNC2(1, "Copymr failed for file %s", *argv);
	FUNC4(0);
}