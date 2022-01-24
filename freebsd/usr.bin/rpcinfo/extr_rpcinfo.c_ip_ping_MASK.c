#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int /*<<< orphan*/  u_short ;
typedef  scalar_t__ u_long ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {void* sin_port; } ;
struct TYPE_2__ {scalar_t__ low; scalar_t__ high; } ;
struct rpc_err {TYPE_1__ re_vers; } ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLSET_FD_NCLOSE ; 
 scalar_t__ MAX_VERS ; 
 scalar_t__ MIN_VERS ; 
 int /*<<< orphan*/  NULLPROC ; 
 int RPC_ANYFD ; 
 int RPC_PROGVERSMISMATCH ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC3 (struct sockaddr_in*,scalar_t__,scalar_t__,int*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rpc_err*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static void
FUNC13(u_short portnum, const char *trans, int argc, char **argv)
{
	CLIENT *client;
	int fd = RPC_ANYFD;
	struct timeval to;
	struct sockaddr_in addr;
	enum clnt_stat rpc_stat;
	u_long prognum, vers, minvers, maxvers;
	struct rpc_err rpcerr;
	int failure = 0;

	if (argc < 2 || argc > 3)
		FUNC12();
	to.tv_sec = 10;
	to.tv_usec = 0;
	prognum = FUNC8(argv[1]);
	FUNC7(&addr, argv[0]);
	if (argc == 2) {	/* Version number not known */
		/*
		 * A call to version 0 should fail with a program/version
		 * mismatch, and give us the range of versions supported.
		 */
		vers = MIN_VERS;
	} else {
		vers = FUNC9(argv[2]);
	}
	addr.sin_port = FUNC10(portnum);
	client = FUNC3(&addr, prognum, vers, &fd, trans);
	rpc_stat = FUNC0(client, NULLPROC, (xdrproc_t) xdr_void,
			(char *)NULL, (xdrproc_t) xdr_void, (char *)NULL,
			to);
	if (argc != 2) {
		/* Version number was known */
		if (FUNC11(client, prognum, vers) < 0)
			FUNC6(1);
		(void) FUNC2(client);
		return;
	}
	/* Version number not known */
	(void) FUNC1(client, CLSET_FD_NCLOSE, (char *)NULL);
	if (rpc_stat == RPC_PROGVERSMISMATCH) {
		FUNC4(client, &rpcerr);
		minvers = rpcerr.re_vers.low;
		maxvers = rpcerr.re_vers.high;
	} else if (rpc_stat == RPC_SUCCESS) {
		/*
		 * Oh dear, it DOES support version 0.
		 * Let's try version MAX_VERS.
		 */
		(void) FUNC2(client);
		addr.sin_port = FUNC10(portnum);
		client = FUNC3(&addr, prognum, MAX_VERS, &fd, trans);
		rpc_stat = FUNC0(client, NULLPROC, (xdrproc_t) xdr_void,
				(char *)NULL, (xdrproc_t) xdr_void,
				(char *)NULL, to);
		if (rpc_stat == RPC_PROGVERSMISMATCH) {
			FUNC4(client, &rpcerr);
			minvers = rpcerr.re_vers.low;
			maxvers = rpcerr.re_vers.high;
		} else if (rpc_stat == RPC_SUCCESS) {
			/*
			 * It also supports version MAX_VERS.
			 * Looks like we have a wise guy.
			 * OK, we give them information on all
			 * 4 billion versions they support...
			 */
			minvers = 0;
			maxvers = MAX_VERS;
		} else {
			(void) FUNC11(client, prognum, MAX_VERS);
			FUNC6(1);
		}
	} else {
		(void) FUNC11(client, prognum, (u_long)0);
		FUNC6(1);
	}
	(void) FUNC2(client);
	for (vers = minvers; vers <= maxvers; vers++) {
		addr.sin_port = FUNC10(portnum);
		client = FUNC3(&addr, prognum, vers, &fd, trans);
		rpc_stat = FUNC0(client, NULLPROC, (xdrproc_t) xdr_void,
				(char *)NULL, (xdrproc_t) xdr_void,
				(char *)NULL, to);
		if (FUNC11(client, prognum, vers) < 0)
				failure = 1;
		(void) FUNC2(client);
	}
	if (failure)
		FUNC6(1);
	(void) FUNC5(fd);
	return;
}