#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct dirent {char* d_name; } ;
struct _dom_binding {int dom_lockfd; int dom_default; struct _dom_binding* dom_pnext; scalar_t__ dom_alive; int /*<<< orphan*/  dom_vers; int /*<<< orphan*/  dom_domain; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 char* BINDINGDIR ; 
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int LOCK_EX ; 
 int LOCK_NB ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_PID ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  MADV_PROTECT ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  MAX_CHILDREN ; 
 int O_CREAT ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  READFD ; 
 int /*<<< orphan*/  RPC_ANYSOCK ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  YPBINDLOCK ; 
 int /*<<< orphan*/  YPBINDPROG ; 
 int /*<<< orphan*/  YPBINDVERS ; 
 scalar_t__ YPMAXDOMAIN ; 
 int /*<<< orphan*/  YPSET_ALL ; 
 int /*<<< orphan*/  YPSET_LOCAL ; 
 int /*<<< orphan*/  YPVERS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct _dom_binding*) ; 
 int /*<<< orphan*/  FUNC3 (struct _dom_binding*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  children ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* domain_name ; 
 int /*<<< orphan*/  domains ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  fdsr ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct _dom_binding*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct _dom_binding* FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppid ; 
 struct dirent* FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reaper ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC25 (char*) ; 
 int /*<<< orphan*/  svc_fdset ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * tcptransp ; 
 int /*<<< orphan*/  terminate ; 
 int /*<<< orphan*/ * udptransp ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 int /*<<< orphan*/  FUNC32 (char*,char*) ; 
 int /*<<< orphan*/  FUNC33 (char**) ; 
 int /*<<< orphan*/  yp_manycast ; 
 int /*<<< orphan*/  FUNC34 (char*) ; 
 struct _dom_binding* ypbindlist ; 
 int /*<<< orphan*/  ypbindprog_2 ; 
 int yplockfd ; 
 int /*<<< orphan*/  ypsecuremode ; 
 int /*<<< orphan*/  ypsetmode ; 

int
FUNC35(int argc, char *argv[])
{
	struct timeval tv;
	int i;
	DIR *dird;
	struct dirent *dirp;
	struct _dom_binding *ypdb, *next;

	/* Check that another ypbind isn't already running. */
	if ((yplockfd = (FUNC15(YPBINDLOCK, O_RDONLY|O_CREAT, 0444))) == -1)
		FUNC7(1, "%s", YPBINDLOCK);

	if (FUNC10(yplockfd, LOCK_EX|LOCK_NB) == -1 && errno == EWOULDBLOCK)
		FUNC8(1, "another ypbind is already running. Aborting");

	/* XXX domainname will be overridden if we use restricted mode */
	FUNC33(&domain_name);
	if (domain_name[0] == '\0')
		FUNC8(1, "domainname not set. Aborting");

	for (i = 1; i<argc; i++) {
		if (FUNC23("-ypset", argv[i]) == 0)
			ypsetmode = YPSET_ALL;
		else if (FUNC23("-ypsetme", argv[i]) == 0)
		        ypsetmode = YPSET_LOCAL;
		else if (FUNC23("-s", argv[i]) == 0)
		        ypsecuremode++;
		else if (FUNC23("-S", argv[i]) == 0 && argc > i)
			FUNC34(argv[++i]);
		else if (FUNC23("-m", argv[i]) == 0)
			yp_manycast++;
		else
			FUNC8(1, "unknown option: %s", argv[i]);
	}

	if (FUNC25(domain_name) > YPMAXDOMAIN)
		FUNC32("truncating domain name %s", domain_name);

	/* blow away everything in BINDINGDIR (if it exists) */

	if ((dird = FUNC16(BINDINGDIR)) != NULL) {
		char path[MAXPATHLEN];
		while ((dirp = FUNC19(dird)) != NULL)
			if (FUNC23(dirp->d_name, ".") &&
			    FUNC23(dirp->d_name, "..")) {
				FUNC22(path,"%s/%s",BINDINGDIR,dirp->d_name);
				FUNC31(path);
			}
		FUNC5(dird);
	}

#ifdef DAEMON
	if (daemon(0,0))
		err(1, "fork");
#endif

	FUNC18(YPBINDPROG, YPBINDVERS);

	udptransp = FUNC29(RPC_ANYSOCK);
	if (udptransp == NULL)
		FUNC8(1, "cannot create udp service");
	if (!FUNC27(udptransp, YPBINDPROG, YPBINDVERS, ypbindprog_2,
	    IPPROTO_UDP))
		FUNC8(1, "unable to register (YPBINDPROG, YPBINDVERS, udp)");

	tcptransp = FUNC28(RPC_ANYSOCK, 0, 0);
	if (tcptransp == NULL)
		FUNC8(1, "cannot create tcp service");

	if (!FUNC27(tcptransp, YPBINDPROG, YPBINDVERS, ypbindprog_2,
	    IPPROTO_TCP))
		FUNC8(1, "unable to register (YPBINDPROG, YPBINDVERS, tcp)");

	/* build initial domain binding, make it "unsuccessful" */
	ypbindlist = FUNC14(sizeof *ypbindlist);
	if (ypbindlist == NULL)
		FUNC8(1, "malloc");
	FUNC3(ypbindlist, sizeof *ypbindlist);
	FUNC24(ypbindlist->dom_domain, domain_name, sizeof ypbindlist->dom_domain);
	ypbindlist->dom_vers = YPVERS;
	ypbindlist->dom_alive = 0;
	ypbindlist->dom_lockfd = -1;
	ypbindlist->dom_default = 1;
	domains++;

	FUNC21(SIGCHLD, reaper);
	FUNC21(SIGTERM, terminate);

	ppid = FUNC11(); /* Remember who we are. */

	FUNC17(argv[0], LOG_PID, LOG_DAEMON);

	if (FUNC13(NULL, 0, MADV_PROTECT) != 0)
		FUNC30(LOG_WARNING, "madvise(): %m");

	/* Kick off the default domain */
	FUNC2(ypbindlist);

	while (1) {
		fdsr = svc_fdset;

		tv.tv_sec = 60;
		tv.tv_usec = 0;

		switch (FUNC20(FUNC1(), &fdsr, NULL, NULL, &tv)) {
		case 0:
			FUNC4();
			break;
		case -1:
			if (errno != EINTR)
				FUNC30(LOG_WARNING, "select: %m");
			break;
		default:
			for (ypdb = ypbindlist; ypdb; ypdb = next) {
				next = ypdb->dom_pnext;
				if (READFD > 0 && FUNC0(READFD, &fdsr)) {
					FUNC12(ypdb);
					if (children == (MAX_CHILDREN - 1))
						FUNC4();
				}
			}
			FUNC26(&fdsr);
			break;
		}
	}

	/* NOTREACHED */
	FUNC9(1);
}