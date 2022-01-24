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
 int /*<<< orphan*/  AUTH_DES ; 
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
 int /*<<< orphan*/  YPU_PROG ; 
 int /*<<< orphan*/  YPU_VERS ; 
 int _RPCSVC_CLOSEDOWN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ _rpcfdtype ; 
 int _rpcpmstart ; 
 int /*<<< orphan*/  _svcauth_des ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ closedown ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char**,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ reaper ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  yp_dir ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  ypu_prog_1 ; 
 int /*<<< orphan*/  FUNC18 () ; 

int
FUNC19(int argc, char *argv[])
{
	register SVCXPRT *transp = NULL;
	int sock;
	int proto = 0;
	struct sockaddr_in saddr;
	int asize = sizeof (saddr);
	int ch;

	while ((ch = FUNC5(argc, argv, "p:h")) != -1) {
		switch (ch) {
		case 'p':
			yp_dir = optarg;
			break;
		default:
			FUNC16();
			break;
		}
	}
#ifdef foo
	load_securenets();
#endif

	if (FUNC12(AUTH_DES, _svcauth_des) == -1) {
		FUNC17("failed to register AUTH_DES flavor");
		FUNC4(1);
	}

	if (FUNC6(0, (struct sockaddr *)&saddr, &asize) == 0) {
		int ssize = sizeof (int);

		if (saddr.sin_family != AF_INET)
			FUNC4(1);
		if (FUNC7(0, SOL_SOCKET, SO_TYPE,
				(char *)&_rpcfdtype, &ssize) == -1)
			FUNC4(1);
		sock = 0;
		_rpcpmstart = 1;
		proto = 0;
		FUNC9("rpc.ypupdatedd", LOG_PID, LOG_DAEMON);
	} else {
#ifndef RPC_SVC_FG
		if (FUNC2(0,0)) {
			FUNC3(1, "cannot fork");
		}
		FUNC9("rpc.ypupdated", LOG_PID, LOG_DAEMON);
#endif
		sock = RPC_ANYSOCK;
		(void) FUNC10(YPU_PROG, YPU_VERS);
	}

	if ((_rpcfdtype == 0) || (_rpcfdtype == SOCK_DGRAM)) {
		transp = FUNC15(sock);
		if (transp == NULL) {
			FUNC0("cannot create udp service.");
			FUNC4(1);
		}
		if (!_rpcpmstart)
			proto = IPPROTO_UDP;
		if (!FUNC13(transp, YPU_PROG, YPU_VERS, ypu_prog_1, proto)) {
			FUNC0("unable to register (YPU_PROG, YPU_VERS, udp).");
			FUNC4(1);
		}
	}

	if ((_rpcfdtype == 0) || (_rpcfdtype == SOCK_STREAM)) {
		transp = FUNC14(sock, 0, 0);
		if (transp == NULL) {
			FUNC0("cannot create tcp service.");
			FUNC4(1);
		}
		if (!_rpcpmstart)
			proto = IPPROTO_TCP;
		if (!FUNC13(transp, YPU_PROG, YPU_VERS, ypu_prog_1, proto)) {
			FUNC0("unable to register (YPU_PROG, YPU_VERS, tcp).");
			FUNC4(1);
		}
	}

	if (transp == (SVCXPRT *)NULL) {
		FUNC0("could not create a handle");
		FUNC4(1);
	}
	if (_rpcpmstart) {
		(void) FUNC11(SIGALRM, (SIG_PF) closedown);
		(void) FUNC1(_RPCSVC_CLOSEDOWN/2);
	}

	(void) FUNC11(SIGPIPE, SIG_IGN);
	(void) FUNC11(SIGCHLD, (SIG_PF) reaper);
	(void) FUNC11(SIGTERM, (SIG_PF) reaper);
	(void) FUNC11(SIGINT, (SIG_PF) reaper);
	(void) FUNC11(SIGHUP, (SIG_PF) reaper);

	FUNC18();
	FUNC0("svc_run returned");
	FUNC4(1);
	/* NOTREACHED */
}