#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nfsd_nfsd_args {int mirrorcnt; scalar_t__ addrlen; int /*<<< orphan*/ * addr; } ;
struct nfsd_addsock_args {int sock; int namelen; struct nfsd_addsock_args* name; } ;
struct netconfig {int dummy; } ;
struct netbuf {int /*<<< orphan*/  maxlen; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct addrinfo {void* ai_family; void* ai_socktype; void* ai_protocol; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; void* ai_flags; } ;
typedef  int socklen_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  peer ;
typedef  int /*<<< orphan*/  on ;
typedef  int /*<<< orphan*/  nfs_minvers ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  struct nfsd_addsock_args* caddr_t ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 void* AF_INET ; 
 void* AF_INET6 ; 
 void* AI_PASSIVE ; 
 int /*<<< orphan*/  DEFNFSDCNT ; 
 int EAFNOSUPPORT ; 
 int ECONNABORTED ; 
 int EINTR ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  EX_USAGE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 void* IPPROTO_TCP ; 
 void* IPPROTO_UDP ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int LOG_PERROR ; 
 int LOG_PID ; 
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 int NFSDEV_MAXMIRRORS ; 
 int /*<<< orphan*/  NFSD_STABLERESTART ; 
 int NFSSVC_BACKUPSTABLE ; 
 int NFSSVC_NEWSTRUCT ; 
 int NFSSVC_NFSDADDSOCK ; 
 int NFSSVC_NFSDNFSD ; 
 int NFSSVC_STABLERESTART ; 
 int /*<<< orphan*/  NFS_PROGRAM ; 
 int NFS_VER2 ; 
 int NFS_VER3 ; 
 int NFS_VER4 ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGSYS ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 void* SOCK_DGRAM ; 
 void* SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int FUNC3 (int,struct sockaddr*,int*) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  backup_stable ; 
 int /*<<< orphan*/  backupfd ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  child_cleanup ; 
 int* children ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*,struct addrinfo*,struct addrinfo**) ; 
 struct netconfig* FUNC15 (char*) ; 
 int FUNC16 (int,char**,char*,TYPE_1__*,int*) ; 
 char* getopt_shortopts ; 
 char* getopt_usage ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (char*) ; 
 scalar_t__ FUNC19 (int,int) ; 
 TYPE_1__* longopts ; 
 int /*<<< orphan*/  masterpid ; 
 scalar_t__ maxthreads ; 
 scalar_t__ maxthreads_set ; 
 int /*<<< orphan*/  FUNC20 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ minthreads ; 
 scalar_t__ minthreads_set ; 
 scalar_t__ FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  nfsdcnt ; 
 scalar_t__ FUNC23 (int,struct nfsd_addsock_args*) ; 
 int nfssvc_nfsd ; 
 int /*<<< orphan*/  nonfs ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char*,int,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC26 (char*,struct nfsd_nfsd_args*) ; 
 char** FUNC27 (char**,int) ; 
 int /*<<< orphan*/  reapchild ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int,struct netconfig*,struct netbuf*) ; 
 int FUNC29 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (void*) ; 
 scalar_t__ FUNC31 (struct addrinfo**,char*,struct addrinfo) ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 scalar_t__ FUNC33 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC35 (void*,void*,void*) ; 
 scalar_t__ stablefd ; 
 int /*<<< orphan*/  FUNC36 (int,struct nfsd_nfsd_args*,char const*) ; 
 int /*<<< orphan*/  FUNC37 (char const*,char*) ; 
 char* FUNC38 (char*) ; 
 int /*<<< orphan*/  FUNC39 (char*) ; 
 int FUNC40 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int /*<<< orphan*/  FUNC43 () ; 
 int /*<<< orphan*/  FUNC44 (char*,...) ; 

int
FUNC45(int argc, char **argv)
{
	struct nfsd_addsock_args addsockargs;
	struct addrinfo *ai_udp, *ai_tcp, *ai_udp6, *ai_tcp6, hints;
	struct netconfig *nconf_udp, *nconf_tcp, *nconf_udp6, *nconf_tcp6;
	struct netbuf nb_udp, nb_tcp, nb_udp6, nb_tcp6;
	struct sockaddr_storage peer;
	fd_set ready, sockbits;
	int ch, connect_type_cnt, i, maxsock, msgsock;
	socklen_t len;
	int on = 1, unregister, reregister, sock;
	int tcp6sock, ip6flag, tcpflag, tcpsock;
	int udpflag, ecode, error, s;
	int bindhostc, bindanyflag, rpcbreg, rpcbregcnt;
	int nfssvc_addsock;
	int longindex = 0;
	int nfs_minvers = NFS_VER2;
	size_t nfs_minvers_size;
	const char *lopt;
	char **bindhost = NULL;
	pid_t pid;
	struct nfsd_nfsd_args nfsdargs;
	const char *vhostname = NULL;

	nfsdargs.mirrorcnt = 1;
	nfsdargs.addr = NULL;
	nfsdargs.addrlen = 0;
	nfsdcnt = DEFNFSDCNT;
	unregister = reregister = tcpflag = maxsock = 0;
	bindanyflag = udpflag = connect_type_cnt = bindhostc = 0;
	getopt_shortopts = "ah:n:rdtuep:m:V:";
	getopt_usage =
	    "usage:\n"
	    "  nfsd [-ardtue] [-h bindip]\n"
	    "       [-n numservers] [--minthreads #] [--maxthreads #]\n"
	    "       [-p/--pnfs dsserver0:/dsserver0-mounted-on-dir,...,"
	    "dsserverN:/dsserverN-mounted-on-dir] [-m mirrorlevel]\n"
	    "       [-V virtual_hostname]\n";
	while ((ch = FUNC16(argc, argv, getopt_shortopts, longopts,
		    &longindex)) != -1)
		switch (ch) {
		case 'V':
			if (FUNC39(optarg) <= MAXHOSTNAMELEN)
				vhostname = optarg;
			else
				FUNC44("Virtual host name (%s) is too long",
				    optarg);
			break;
		case 'a':
			bindanyflag = 1;
			break;
		case 'n':
			FUNC30(FUNC4(optarg));
			break;
		case 'h':
			bindhostc++;
			bindhost = FUNC27(bindhost,sizeof(char *)*bindhostc);
			if (bindhost == NULL) 
				FUNC9(1, "Out of memory");
			bindhost[bindhostc-1] = FUNC38(optarg);
			if (bindhost[bindhostc-1] == NULL)
				FUNC9(1, "Out of memory");
			break;
		case 'r':
			reregister = 1;
			break;
		case 'd':
			unregister = 1;
			break;
		case 't':
			tcpflag = 1;
			break;
		case 'u':
			udpflag = 1;
			break;
		case 'e':
			/* now a no-op, since this is the default */
			break;
		case 'p':
			/* Parse out the DS server host names and mount pts. */
			FUNC26(optarg, &nfsdargs);
			break;
		case 'm':
			/* Set the mirror level for a pNFS service. */
			i = FUNC4(optarg);
			if (i < 2 || i > NFSDEV_MAXMIRRORS)
				FUNC9(1, "Mirror level out of range 2<-->%d",
				    NFSDEV_MAXMIRRORS);
			nfsdargs.mirrorcnt = i;
			break;
		case 0:
			lopt = longopts[longindex].name;
			if (!FUNC37(lopt, "minthreads")) {
				minthreads = FUNC4(optarg);
			} else if (!FUNC37(lopt, "maxthreads")) {
				maxthreads = FUNC4(optarg);
			}
			break;
		default:
		case '?':
			FUNC43();
		}
	if (!tcpflag && !udpflag)
		udpflag = 1;
	argv += optind;
	argc -= optind;
	if (minthreads_set && maxthreads_set && minthreads > maxthreads)
		FUNC9(EX_USAGE,
		    "error: minthreads(%d) can't be greater than "
		    "maxthreads(%d)", minthreads, maxthreads);

	/*
	 * XXX
	 * Backward compatibility, trailing number is the count of daemons.
	 */
	if (argc > 1)
		FUNC43();
	if (argc == 1)
		FUNC30(FUNC4(argv[0]));

	/*
	 * Unless the "-o" option was specified, try and run "nfsd".
	 * If "-o" was specified, try and run "nfsserver".
	 */
	if (FUNC21("nfsd") < 0) {
		/* Not present in kernel, try loading it */
		if (FUNC18("nfsd") < 0 || FUNC21("nfsd") < 0)
			FUNC9(1, "NFS server is not available");
	}

	ip6flag = 1;
	s = FUNC35(AF_INET6, SOCK_DGRAM, IPPROTO_UDP);
	if (s == -1) {
		if (errno != EPROTONOSUPPORT && errno != EAFNOSUPPORT)
			FUNC8(1, "socket");
		ip6flag = 0;
	} else if (FUNC15("udp6") == NULL ||
		FUNC15("tcp6") == NULL) {
		ip6flag = 0;
	}
	if (s != -1)
		FUNC6(s);

	if (bindhostc == 0 || bindanyflag) {
		bindhostc++;
		bindhost = FUNC27(bindhost,sizeof(char *)*bindhostc);
		if (bindhost == NULL) 
			FUNC9(1, "Out of memory");
		bindhost[bindhostc-1] = FUNC38("*");
		if (bindhost[bindhostc-1] == NULL) 
			FUNC9(1, "Out of memory");
	}

	nfs_minvers_size = sizeof(nfs_minvers);
	error = FUNC40("vfs.nfsd.server_min_nfsvers", &nfs_minvers,
	    &nfs_minvers_size, NULL, 0);
	if (error != 0 || nfs_minvers < NFS_VER2 || nfs_minvers > NFS_VER4) {
		FUNC44("sysctlbyname(vfs.nfsd.server_min_nfsvers) failed,"
		    " defaulting to NFSv2");
		nfs_minvers = NFS_VER2;
	}

	if (unregister) {
		FUNC42();
		FUNC10 (0);
	}
	if (reregister) {
		if (udpflag) {
			FUNC20(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = AF_INET;
			hints.ai_socktype = SOCK_DGRAM;
			hints.ai_protocol = IPPROTO_UDP;
			ecode = FUNC14(NULL, "nfs", &hints, &ai_udp);
			if (ecode != 0)
				FUNC8(1, "getaddrinfo udp: %s", FUNC13(ecode));
			nconf_udp = FUNC15("udp");
			if (nconf_udp == NULL)
				FUNC8(1, "getnetconfigent udp failed");
			nb_udp.buf = ai_udp->ai_addr;
			nb_udp.len = nb_udp.maxlen = ai_udp->ai_addrlen;
			if (nfs_minvers == NFS_VER2)
				if (!FUNC28(NFS_PROGRAM, 2, nconf_udp,
				    &nb_udp))
					FUNC8(1, "rpcb_set udp failed");
			if (nfs_minvers <= NFS_VER3)
				if (!FUNC28(NFS_PROGRAM, 3, nconf_udp,
				    &nb_udp))
					FUNC8(1, "rpcb_set udp failed");
			FUNC12(ai_udp);
		}
		if (udpflag && ip6flag) {
			FUNC20(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = AF_INET6;
			hints.ai_socktype = SOCK_DGRAM;
			hints.ai_protocol = IPPROTO_UDP;
			ecode = FUNC14(NULL, "nfs", &hints, &ai_udp6);
			if (ecode != 0)
				FUNC8(1, "getaddrinfo udp6: %s", FUNC13(ecode));
			nconf_udp6 = FUNC15("udp6");
			if (nconf_udp6 == NULL)
				FUNC8(1, "getnetconfigent udp6 failed");
			nb_udp6.buf = ai_udp6->ai_addr;
			nb_udp6.len = nb_udp6.maxlen = ai_udp6->ai_addrlen;
			if (nfs_minvers == NFS_VER2)
				if (!FUNC28(NFS_PROGRAM, 2, nconf_udp6,
				    &nb_udp6))
					FUNC8(1, "rpcb_set udp6 failed");
			if (nfs_minvers <= NFS_VER3)
				if (!FUNC28(NFS_PROGRAM, 3, nconf_udp6,
				    &nb_udp6))
					FUNC8(1, "rpcb_set udp6 failed");
			FUNC12(ai_udp6);
		}
		if (tcpflag) {
			FUNC20(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = AF_INET;
			hints.ai_socktype = SOCK_STREAM;
			hints.ai_protocol = IPPROTO_TCP;
			ecode = FUNC14(NULL, "nfs", &hints, &ai_tcp);
			if (ecode != 0)
				FUNC8(1, "getaddrinfo tcp: %s", FUNC13(ecode));
			nconf_tcp = FUNC15("tcp");
			if (nconf_tcp == NULL)
				FUNC8(1, "getnetconfigent tcp failed");
			nb_tcp.buf = ai_tcp->ai_addr;
			nb_tcp.len = nb_tcp.maxlen = ai_tcp->ai_addrlen;
			if (nfs_minvers == NFS_VER2)
				if (!FUNC28(NFS_PROGRAM, 2, nconf_tcp,
				    &nb_tcp))
					FUNC8(1, "rpcb_set tcp failed");
			if (nfs_minvers <= NFS_VER3)
				if (!FUNC28(NFS_PROGRAM, 3, nconf_tcp,
				    &nb_tcp))
					FUNC8(1, "rpcb_set tcp failed");
			FUNC12(ai_tcp);
		}
		if (tcpflag && ip6flag) {
			FUNC20(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = AF_INET6;
			hints.ai_socktype = SOCK_STREAM;
			hints.ai_protocol = IPPROTO_TCP;
			ecode = FUNC14(NULL, "nfs", &hints, &ai_tcp6);
			if (ecode != 0)
				FUNC8(1, "getaddrinfo tcp6: %s", FUNC13(ecode));
			nconf_tcp6 = FUNC15("tcp6");
			if (nconf_tcp6 == NULL)
				FUNC8(1, "getnetconfigent tcp6 failed");
			nb_tcp6.buf = ai_tcp6->ai_addr;
			nb_tcp6.len = nb_tcp6.maxlen = ai_tcp6->ai_addrlen;
			if (nfs_minvers == NFS_VER2)
				if (!FUNC28(NFS_PROGRAM, 2, nconf_tcp6,
				    &nb_tcp6))
					FUNC8(1, "rpcb_set tcp6 failed");
			if (nfs_minvers <= NFS_VER3)
				if (!FUNC28(NFS_PROGRAM, 3, nconf_tcp6, 
				   &nb_tcp6))
					FUNC8(1, "rpcb_set tcp6 failed");
			FUNC12(ai_tcp6);
		}
		FUNC10 (0);
	}
	if (debug == 0) {
		FUNC7(0, 0);
		(void)FUNC34(SIGHUP, SIG_IGN);
		(void)FUNC34(SIGINT, SIG_IGN);
		/*
		 * nfsd sits in the kernel most of the time.  It needs
		 * to ignore SIGTERM/SIGQUIT in order to stay alive as long
		 * as possible during a shutdown, otherwise loopback
		 * mounts will not be able to unmount. 
		 */
		(void)FUNC34(SIGTERM, SIG_IGN);
		(void)FUNC34(SIGQUIT, SIG_IGN);
	}
	(void)FUNC34(SIGSYS, nonfs);
	(void)FUNC34(SIGCHLD, reapchild);
	(void)FUNC34(SIGUSR2, backup_stable);

	FUNC25("nfsd", LOG_PID | (debug ? LOG_PERROR : 0), LOG_DAEMON);

	/*
	 * For V4, we open the stablerestart file and call nfssvc()
	 * to get it loaded. This is done before the daemons do the
	 * regular nfssvc() call to service NFS requests.
	 * (This way the file remains open until the last nfsd is killed
	 *  off.)
	 * It and the backup copy will be created as empty files
	 * the first time this nfsd is started and should never be
	 * deleted/replaced if at all possible. It should live on a
	 * local, non-volatile storage device that does not do hardware
	 * level write-back caching. (See SCSI doc for more information
	 * on how to prevent write-back caching on SCSI disks.)
	 */
	FUNC24(&stablefd, &backupfd);
	if (stablefd < 0) {
		FUNC41(LOG_ERR, "Can't open %s: %m\n", NFSD_STABLERESTART);
		FUNC10(1);
	}
	/* This system call will fail for old kernels, but that's ok. */
	FUNC23(NFSSVC_BACKUPSTABLE, NULL);
	if (FUNC23(NFSSVC_STABLERESTART, (caddr_t)&stablefd) < 0) {
		FUNC41(LOG_ERR, "Can't read stable storage file: %m\n");
		FUNC10(1);
	}
	nfssvc_addsock = NFSSVC_NFSDADDSOCK;
	nfssvc_nfsd = NFSSVC_NFSDNFSD | NFSSVC_NEWSTRUCT;

	if (tcpflag) {
		/*
		 * For TCP mode, we fork once to start the first
		 * kernel nfsd thread. The kernel will add more
		 * threads as needed.
		 */
		masterpid = FUNC17();
		pid = FUNC11();
		if (pid == -1) {
			FUNC41(LOG_ERR, "fork: %m");
			FUNC22(1);
		}
		if (pid) {
			children[0] = pid;
		} else {
			(void)FUNC34(SIGUSR1, child_cleanup);
			FUNC32("server");
			FUNC36(0, &nfsdargs, vhostname);
		}
	}

	(void)FUNC34(SIGUSR1, cleanup);
	FUNC2(&sockbits);
 
	rpcbregcnt = 0;
	/* Set up the socket for udp and rpcb register it. */
	if (udpflag) {
		rpcbreg = 0;
		for (i = 0; i < bindhostc; i++) {
			FUNC20(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = AF_INET;
			hints.ai_socktype = SOCK_DGRAM;
			hints.ai_protocol = IPPROTO_UDP;
			if (FUNC31(&ai_udp, bindhost[i], hints) == 0) {
				rpcbreg = 1;
				rpcbregcnt++;
				if ((sock = FUNC35(ai_udp->ai_family,
				    ai_udp->ai_socktype,
				    ai_udp->ai_protocol)) < 0) {
					FUNC41(LOG_ERR,
					    "can't create udp socket");
					FUNC22(1);
				}
				if (FUNC5(sock, ai_udp->ai_addr,
				    ai_udp->ai_addrlen) < 0) {
					FUNC41(LOG_ERR,
					    "can't bind udp addr %s: %m",
					    bindhost[i]);
					FUNC22(1);
				}
				FUNC12(ai_udp);
				addsockargs.sock = sock;
				addsockargs.name = NULL;
				addsockargs.namelen = 0;
				if (FUNC23(nfssvc_addsock, &addsockargs) < 0) {
					FUNC41(LOG_ERR, "can't Add UDP socket");
					FUNC22(1);
				}
				(void)FUNC6(sock);
			}
		}
		if (rpcbreg == 1) {
			FUNC20(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = AF_INET;
			hints.ai_socktype = SOCK_DGRAM;
			hints.ai_protocol = IPPROTO_UDP;
			ecode = FUNC14(NULL, "nfs", &hints, &ai_udp);
			if (ecode != 0) {
				FUNC41(LOG_ERR, "getaddrinfo udp: %s",
				   FUNC13(ecode));
				FUNC22(1);
			}
			nconf_udp = FUNC15("udp");
			if (nconf_udp == NULL)
				FUNC8(1, "getnetconfigent udp failed");
			nb_udp.buf = ai_udp->ai_addr;
			nb_udp.len = nb_udp.maxlen = ai_udp->ai_addrlen;
			if (nfs_minvers == NFS_VER2)
				if (!FUNC28(NFS_PROGRAM, 2, nconf_udp,
				    &nb_udp))
					FUNC8(1, "rpcb_set udp failed");
			if (nfs_minvers <= NFS_VER3)
				if (!FUNC28(NFS_PROGRAM, 3, nconf_udp,
				    &nb_udp))
					FUNC8(1, "rpcb_set udp failed");
			FUNC12(ai_udp);
		}
	}

	/* Set up the socket for udp6 and rpcb register it. */
	if (udpflag && ip6flag) {
		rpcbreg = 0;
		for (i = 0; i < bindhostc; i++) {
			FUNC20(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = AF_INET6;
			hints.ai_socktype = SOCK_DGRAM;
			hints.ai_protocol = IPPROTO_UDP;
			if (FUNC31(&ai_udp6, bindhost[i], hints) == 0) {
				rpcbreg = 1;
				rpcbregcnt++;
				if ((sock = FUNC35(ai_udp6->ai_family,
				    ai_udp6->ai_socktype,
				    ai_udp6->ai_protocol)) < 0) {
					FUNC41(LOG_ERR,
						"can't create udp6 socket");
					FUNC22(1);
				}
				if (FUNC33(sock, IPPROTO_IPV6, IPV6_V6ONLY,
				    &on, sizeof on) < 0) {
					FUNC41(LOG_ERR,
					    "can't set v6-only binding for "
					    "udp6 socket: %m");
					FUNC22(1);
				}
				if (FUNC5(sock, ai_udp6->ai_addr,
				    ai_udp6->ai_addrlen) < 0) {
					FUNC41(LOG_ERR,
					    "can't bind udp6 addr %s: %m",
					    bindhost[i]);
					FUNC22(1);
				}
				FUNC12(ai_udp6);
				addsockargs.sock = sock;
				addsockargs.name = NULL;
				addsockargs.namelen = 0;
				if (FUNC23(nfssvc_addsock, &addsockargs) < 0) {
					FUNC41(LOG_ERR,
					    "can't add UDP6 socket");
					FUNC22(1);
				}
				(void)FUNC6(sock);    
			}
		}
		if (rpcbreg == 1) {
			FUNC20(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = AF_INET6;
			hints.ai_socktype = SOCK_DGRAM;
			hints.ai_protocol = IPPROTO_UDP;
			ecode = FUNC14(NULL, "nfs", &hints, &ai_udp6);
			if (ecode != 0) {
				FUNC41(LOG_ERR, "getaddrinfo udp6: %s",
				   FUNC13(ecode));
				FUNC22(1);
			}
			nconf_udp6 = FUNC15("udp6");
			if (nconf_udp6 == NULL)
				FUNC8(1, "getnetconfigent udp6 failed");
			nb_udp6.buf = ai_udp6->ai_addr;
			nb_udp6.len = nb_udp6.maxlen = ai_udp6->ai_addrlen;
			if (nfs_minvers == NFS_VER2)
				if (!FUNC28(NFS_PROGRAM, 2, nconf_udp6,
				    &nb_udp6))
					FUNC8(1,
					    "rpcb_set udp6 failed");
			if (nfs_minvers <= NFS_VER3)
				if (!FUNC28(NFS_PROGRAM, 3, nconf_udp6,
				    &nb_udp6))
					FUNC8(1,
					    "rpcb_set udp6 failed");
			FUNC12(ai_udp6);
		}
	}

	/* Set up the socket for tcp and rpcb register it. */
	if (tcpflag) {
		rpcbreg = 0;
		for (i = 0; i < bindhostc; i++) {
			FUNC20(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = AF_INET;
			hints.ai_socktype = SOCK_STREAM;
			hints.ai_protocol = IPPROTO_TCP;
			if (FUNC31(&ai_tcp, bindhost[i], hints) == 0) {
				rpcbreg = 1;
				rpcbregcnt++;
				if ((tcpsock = FUNC35(AF_INET, SOCK_STREAM,
				    0)) < 0) {
					FUNC41(LOG_ERR,
					    "can't create tcp socket");
					FUNC22(1);
				}
				if (FUNC33(tcpsock, SOL_SOCKET,
				    SO_REUSEADDR,
				    (char *)&on, sizeof(on)) < 0)
					FUNC41(LOG_ERR,
					     "setsockopt SO_REUSEADDR: %m");
				if (FUNC5(tcpsock, ai_tcp->ai_addr,
				    ai_tcp->ai_addrlen) < 0) {
					FUNC41(LOG_ERR,
					    "can't bind tcp addr %s: %m",
					    bindhost[i]);
					FUNC22(1);
				}
				if (FUNC19(tcpsock, -1) < 0) {
					FUNC41(LOG_ERR, "listen failed");
					FUNC22(1);
				}
				FUNC12(ai_tcp);
				FUNC1(tcpsock, &sockbits);
				maxsock = tcpsock;
				connect_type_cnt++;
			}
		}
		if (rpcbreg == 1) {
			FUNC20(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = AF_INET;
			hints.ai_socktype = SOCK_STREAM;
			hints.ai_protocol = IPPROTO_TCP;
			ecode = FUNC14(NULL, "nfs", &hints,
			     &ai_tcp);
			if (ecode != 0) {
				FUNC41(LOG_ERR, "getaddrinfo tcp: %s",
				   FUNC13(ecode));
				FUNC22(1);
			}
			nconf_tcp = FUNC15("tcp");
			if (nconf_tcp == NULL)
				FUNC8(1, "getnetconfigent tcp failed");
			nb_tcp.buf = ai_tcp->ai_addr;
			nb_tcp.len = nb_tcp.maxlen = ai_tcp->ai_addrlen;
			if (nfs_minvers == NFS_VER2)
				if (!FUNC28(NFS_PROGRAM, 2, nconf_tcp,
				    &nb_tcp))
					FUNC8(1, "rpcb_set tcp failed");
			if (nfs_minvers <= NFS_VER3)
				if (!FUNC28(NFS_PROGRAM, 3, nconf_tcp,
				    &nb_tcp))
					FUNC8(1, "rpcb_set tcp failed");
			FUNC12(ai_tcp);
		}
	}

	/* Set up the socket for tcp6 and rpcb register it. */
	if (tcpflag && ip6flag) {
		rpcbreg = 0;
		for (i = 0; i < bindhostc; i++) {
			FUNC20(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = AF_INET6;
			hints.ai_socktype = SOCK_STREAM;
			hints.ai_protocol = IPPROTO_TCP;
			if (FUNC31(&ai_tcp6, bindhost[i], hints) == 0) {
				rpcbreg = 1;
				rpcbregcnt++;
				if ((tcp6sock = FUNC35(ai_tcp6->ai_family,
				    ai_tcp6->ai_socktype,
				    ai_tcp6->ai_protocol)) < 0) {
					FUNC41(LOG_ERR,
					    "can't create tcp6 socket");
					FUNC22(1);
				}
				if (FUNC33(tcp6sock, SOL_SOCKET,
				    SO_REUSEADDR,
				    (char *)&on, sizeof(on)) < 0)
					FUNC41(LOG_ERR,
					    "setsockopt SO_REUSEADDR: %m");
				if (FUNC33(tcp6sock, IPPROTO_IPV6,
				    IPV6_V6ONLY, &on, sizeof on) < 0) {
					FUNC41(LOG_ERR,
					"can't set v6-only binding for tcp6 "
					    "socket: %m");
					FUNC22(1);
				}
				if (FUNC5(tcp6sock, ai_tcp6->ai_addr,
				    ai_tcp6->ai_addrlen) < 0) {
					FUNC41(LOG_ERR,
					    "can't bind tcp6 addr %s: %m",
					    bindhost[i]);
					FUNC22(1);
				}
				if (FUNC19(tcp6sock, -1) < 0) {
					FUNC41(LOG_ERR, "listen failed");
					FUNC22(1);
				}
				FUNC12(ai_tcp6);
				FUNC1(tcp6sock, &sockbits);
				if (maxsock < tcp6sock)
					maxsock = tcp6sock;
				connect_type_cnt++;
			}
		}
		if (rpcbreg == 1) {
			FUNC20(&hints, 0, sizeof hints);
			hints.ai_flags = AI_PASSIVE;
			hints.ai_family = AF_INET6;
			hints.ai_socktype = SOCK_STREAM;
			hints.ai_protocol = IPPROTO_TCP;
			ecode = FUNC14(NULL, "nfs", &hints, &ai_tcp6);
			if (ecode != 0) {
				FUNC41(LOG_ERR, "getaddrinfo tcp6: %s",
				   FUNC13(ecode));
				FUNC22(1);
			}
			nconf_tcp6 = FUNC15("tcp6");
			if (nconf_tcp6 == NULL)
				FUNC8(1, "getnetconfigent tcp6 failed");
			nb_tcp6.buf = ai_tcp6->ai_addr;
			nb_tcp6.len = nb_tcp6.maxlen = ai_tcp6->ai_addrlen;
			if (nfs_minvers == NFS_VER2)
				if (!FUNC28(NFS_PROGRAM, 2, nconf_tcp6,
				    &nb_tcp6))
					FUNC8(1, "rpcb_set tcp6 failed");
			if (nfs_minvers <= NFS_VER3)
				if (!FUNC28(NFS_PROGRAM, 3, nconf_tcp6,
				    &nb_tcp6))
					FUNC8(1, "rpcb_set tcp6 failed");
			FUNC12(ai_tcp6);
		}
	}

	if (rpcbregcnt == 0) {
		FUNC41(LOG_ERR, "rpcb_set() failed, nothing to do: %m");
		FUNC22(1);
	}

	if (tcpflag && connect_type_cnt == 0) {
		FUNC41(LOG_ERR, "tcp connects == 0, nothing to do: %m");
		FUNC22(1);
	}

	FUNC32("master");
	/*
	 * We always want a master to have a clean way to shut nfsd down
	 * (with unregistration): if the master is killed, it unregisters and
	 * kills all children. If we run for UDP only (and so do not have to
	 * loop waiting for accept), we instead make the parent
	 * a "server" too. start_server will not return.
	 */
	if (!tcpflag)
		FUNC36(1, &nfsdargs, vhostname);

	/*
	 * Loop forever accepting connections and passing the sockets
	 * into the kernel for the mounts.
	 */
	for (;;) {
		ready = sockbits;
		if (connect_type_cnt > 1) {
			if (FUNC29(maxsock + 1,
			    &ready, NULL, NULL, NULL) < 1) {
				error = errno;
				if (error == EINTR)
					continue;
				FUNC41(LOG_ERR, "select failed: %m");
				FUNC22(1);
			}
		}
		for (tcpsock = 0; tcpsock <= maxsock; tcpsock++) {
			if (FUNC0(tcpsock, &ready)) {
				len = sizeof(peer);
				if ((msgsock = FUNC3(tcpsock,
				    (struct sockaddr *)&peer, &len)) < 0) {
					error = errno;
					FUNC41(LOG_ERR, "accept failed: %m");
					if (error == ECONNABORTED ||
					    error == EINTR)
						continue;
					FUNC22(1);
				}
				if (FUNC33(msgsock, SOL_SOCKET,
				    SO_KEEPALIVE, (char *)&on, sizeof(on)) < 0)
					FUNC41(LOG_ERR,
					    "setsockopt SO_KEEPALIVE: %m");
				addsockargs.sock = msgsock;
				addsockargs.name = (caddr_t)&peer;
				addsockargs.namelen = len;
				FUNC23(nfssvc_addsock, &addsockargs);
				(void)FUNC6(msgsock);
			}
		}
	}
}