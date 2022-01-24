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
struct netconfig {int nc_flag; int /*<<< orphan*/  nc_netid; } ;
struct bindaddrlistent {scalar_t__ si_socktype; scalar_t__ si_af; void* ble_hostname; } ;
struct __rpc_sockinfo {scalar_t__ si_socktype; scalar_t__ si_af; void* ble_hostname; } ;
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  SIG_PF ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_PID ; 
 int /*<<< orphan*/  MADV_PROTECT ; 
 int NC_VISIBLE ; 
 int /*<<< orphan*/  NETCONFIG ; 
 scalar_t__ RPC_ANYFD ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bindaddrlistent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int _RPCSVC_CLOSEDOWN ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct bindaddrlistent*) ; 
 scalar_t__ FUNC5 (struct netconfig*,struct bindaddrlistent*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ _rpcaf ; 
 scalar_t__ _rpcfd ; 
 scalar_t__ _rpcfdtype ; 
 int _rpcpmstart ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  ble_head ; 
 int /*<<< orphan*/  ble_next ; 
 scalar_t__ closedown ; 
 int FUNC8 (scalar_t__,struct netconfig*,struct bindaddrlistent*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int debug ; 
 int do_dns ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 struct netconfig* FUNC13 (void*) ; 
 int FUNC14 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bindaddrlistent* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct bindaddrlistent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* optarg ; 
 scalar_t__ reaper ; 
 void* servname ; 
 void* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 void* yp_dir ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int ypdb_debug ; 

int
FUNC28(int argc, char *argv[])
{
	int ch;
	int error;
	int ntrans;
	
	void *nc_handle;
	struct netconfig *nconf;
	struct __rpc_sockinfo si;
	struct bindaddrlistent *blep;

	FUNC18(&si, 0, sizeof(si));
	FUNC1(&ble_head);

	while ((ch = FUNC14(argc, argv, "dh:np:P:")) != -1) {
		switch (ch) {
		case 'd':
			debug = ypdb_debug = 1;
			break;
		case 'h':
			blep = FUNC17(sizeof(*blep));
			if (blep == NULL)
				FUNC11(1, "malloc() failed: -h %s", optarg);
			blep->ble_hostname = optarg;
			FUNC2(&ble_head, blep, ble_next);
			break;
		case 'n':
			do_dns = 1;
			break;
		case 'p':
			yp_dir = optarg;
			break;
		case 'P':
			servname = optarg;
			break;
		default:
			FUNC24();
		}
	}
	/*
	 * Add "anyaddr" entry if no -h is specified.
	 */
	if (FUNC0(&ble_head)) {
		blep = FUNC17(sizeof(*blep));
		if (blep == NULL)
			FUNC11(1, "malloc() failed");
		FUNC18(blep, 0, sizeof(*blep));
		FUNC2(&ble_head, blep, ble_next);
	}

	FUNC15();
	FUNC26();
#ifdef DB_CACHE
	yp_init_dbs();
#endif
	nc_handle = FUNC20();
	if (nc_handle == NULL)
		FUNC11(1, "cannot read %s", NETCONFIG);
	if (FUNC4(0, &si) != 0) {
		/* invoked from inetd */
		_rpcpmstart = 1;
		_rpcfdtype = si.si_socktype;
		_rpcaf = si.si_af;
		_rpcfd = 0;
		FUNC19("ypserv", LOG_PID, LOG_DAEMON);
	} else {
		/* standalone mode */
		if (!debug) {
			if (FUNC9(0,0)) {
				FUNC11(1,"cannot fork");
			}
			FUNC19("ypserv", LOG_PID, LOG_DAEMON);
		}
		_rpcpmstart = 0;
		_rpcaf = AF_INET;
		_rpcfd = RPC_ANYFD;
		FUNC23();
	}

	if (FUNC16(NULL, 0, MADV_PROTECT) != 0)
		FUNC6("madvise(): %s", FUNC22(errno));

	/*
	 * Create RPC service for each transport.
	 */
	ntrans = 0;
	while((nconf = FUNC13(nc_handle))) {
		if ((nconf->nc_flag & NC_VISIBLE)) {
			if (FUNC5(nconf, &si) == 0) {
				FUNC6("cannot get information for %s.  "
				    "Ignored.", nconf->nc_netid);
				continue;
			}
			if (_rpcpmstart) {
				if (si.si_socktype != _rpcfdtype ||
				    si.si_af != _rpcaf)
					continue;
			} else if (si.si_af != _rpcaf)
					continue;
			error = FUNC8(_rpcfd, nconf, &si);
			if (error) {
				FUNC10(nc_handle);
				FUNC12(1);
			}
			ntrans++;
		}
	}
	FUNC10(nc_handle);
	while(!(FUNC0(&ble_head)))
		FUNC3(&ble_head, ble_next);
	if (ntrans == 0) {
		FUNC6("no transport is available.  Aborted.");
		FUNC12(1);
	}
	if (_rpcpmstart) {
		(void) FUNC21(SIGALRM, (SIG_PF) closedown);
		(void) FUNC7(_RPCSVC_CLOSEDOWN/2);
	}
/*
 * Make sure SIGPIPE doesn't blow us away while servicing TCP
 * connections.
 */
	(void) FUNC21(SIGPIPE, SIG_IGN);
	(void) FUNC21(SIGCHLD, (SIG_PF) reaper);
	(void) FUNC21(SIGTERM, (SIG_PF) reaper);
	(void) FUNC21(SIGINT, (SIG_PF) reaper);
	(void) FUNC21(SIGHUP, (SIG_PF) reaper);
	FUNC27();
	FUNC6("svc_run returned");
	FUNC12(1);
	/* NOTREACHED */
}