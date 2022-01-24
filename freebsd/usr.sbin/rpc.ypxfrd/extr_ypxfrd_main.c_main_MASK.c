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
struct sockaddr_in {scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  saddr ;
typedef  int /*<<< orphan*/  SVCXPRT ;
typedef  int /*<<< orphan*/  SIG_PF ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_PID ; 
 int RPC_ANYSOCK ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_TYPE ; 
 int /*<<< orphan*/  TIOCNOTTY ; 
 int /*<<< orphan*/  YPXFRD_FREEBSD_PROG ; 
 int /*<<< orphan*/  YPXFRD_FREEBSD_VERS ; 
 int /*<<< orphan*/  _PATH_CONSOLE ; 
 int /*<<< orphan*/  _PATH_TTY ; 
 int _RPCSVC_CLOSEDOWN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ _rpcfdtype ; 
 int _rpcpmstart ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ closedown ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 (int,char**,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ reaper ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  yp_dir ; 
 int /*<<< orphan*/  ypxfrd_freebsd_prog_1 ; 
 int /*<<< orphan*/  FUNC21 () ; 

int
FUNC22(int argc, char *argv[])
{
	register SVCXPRT *transp = NULL;
	int sock;
	int proto = 0;
	struct sockaddr_in saddr;
	int asize = sizeof (saddr);
	int ch;

	while ((ch = FUNC8(argc, argv, "p:h")) != -1) {
		switch (ch) {
		case 'p':
			yp_dir = optarg;
			break;
		default:
			FUNC20();
			break;
		}
	}

	FUNC12();

	if (FUNC9(0, (struct sockaddr *)&saddr, &asize) == 0) {
		int ssize = sizeof (int);

		if (saddr.sin_family != AF_INET)
			FUNC5(1);
		if (FUNC10(0, SOL_SOCKET, SO_TYPE,
				(char *)&_rpcfdtype, &ssize) == -1)
			FUNC5(1);
		sock = 0;
		_rpcpmstart = 1;
		proto = 0;
		FUNC14("rpc.ypxfrd", LOG_PID, LOG_DAEMON);
	} else {
#ifndef RPC_SVC_FG
		int size;
		int pid, i;

		pid = FUNC6();
		if (pid < 0)
			FUNC4(1, "fork");
		if (pid)
			FUNC5(0);
		size = FUNC7();
		for (i = 0; i < size; i++)
			(void) FUNC2(i);
		i = FUNC13(_PATH_CONSOLE, 2);
		(void) FUNC3(i, 1);
		(void) FUNC3(i, 2);
		i = FUNC13(_PATH_TTY, 2);
		if (i >= 0) {
			(void) FUNC11(i, TIOCNOTTY, (char *)NULL);
			(void) FUNC2(i);
		}
		FUNC14("rpc.ypxfrd", LOG_PID, LOG_DAEMON);
#endif
		sock = RPC_ANYSOCK;
		(void) FUNC15(YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS);
	}

	if ((_rpcfdtype == 0) || (_rpcfdtype == SOCK_DGRAM)) {
		transp = FUNC19(sock);
		if (transp == NULL) {
			FUNC0("cannot create udp service.");
			FUNC5(1);
		}
		if (!_rpcpmstart)
			proto = IPPROTO_UDP;
		if (!FUNC17(transp, YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS, ypxfrd_freebsd_prog_1, proto)) {
			FUNC0("unable to register (YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS, udp).");
			FUNC5(1);
		}
	}

	if ((_rpcfdtype == 0) || (_rpcfdtype == SOCK_STREAM)) {
		transp = FUNC18(sock, 0, 0);
		if (transp == NULL) {
			FUNC0("cannot create tcp service.");
			FUNC5(1);
		}
		if (!_rpcpmstart)
			proto = IPPROTO_TCP;
		if (!FUNC17(transp, YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS, ypxfrd_freebsd_prog_1, proto)) {
			FUNC0("unable to register (YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS, tcp).");
			FUNC5(1);
		}
	}

	if (transp == (SVCXPRT *)NULL) {
		FUNC0("could not create a handle");
		FUNC5(1);
	}
	if (_rpcpmstart) {
		(void) FUNC16(SIGALRM, (SIG_PF) closedown);
		(void) FUNC1(_RPCSVC_CLOSEDOWN/2);
	}

	(void) FUNC16(SIGPIPE, SIG_IGN);
	(void) FUNC16(SIGCHLD, (SIG_PF) reaper);
	(void) FUNC16(SIGTERM, (SIG_PF) reaper);
	(void) FUNC16(SIGINT, (SIG_PF) reaper);
	(void) FUNC16(SIGHUP, (SIG_PF) reaper);

	FUNC21();
	FUNC0("svc_run returned");
	FUNC5(1);
	/* NOTREACHED */
}