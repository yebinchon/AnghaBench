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
typedef  scalar_t__ u_long ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {scalar_t__ low; scalar_t__ high; } ;
struct rpc_err {TYPE_1__ re_vers; } ;
struct netconfig {int dummy; } ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  CLGET_FD ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLSET_FD_NCLOSE ; 
 scalar_t__ MAX_VERS ; 
 scalar_t__ MIN_VERS ; 
 int /*<<< orphan*/  NULLPROC ; 
 int RPC_PROGVERSMISMATCH ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC3 (char*,struct netconfig*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rpc_err*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct netconfig* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static void
FUNC13(char *address, char *netid, int argc, char **argv)
{
	CLIENT *client;
	struct timeval to;
	enum clnt_stat rpc_stat;
	u_long prognum, versnum, minvers, maxvers;
	struct rpc_err rpcerr;
	int failure = 0;
	struct netconfig *nconf;
	int fd;

	if (argc < 1 || argc > 2 || (netid == NULL))
		FUNC12();
	nconf = FUNC8(netid);
	if (nconf == (struct netconfig *)NULL)
		FUNC6(1, "could not find %s", netid);
	to.tv_sec = 10;
	to.tv_usec = 0;
	prognum = FUNC9(argv[0]);
	if (argc == 1) {	/* Version number not known */
		/*
		 * A call to version 0 should fail with a program/version
		 * mismatch, and give us the range of versions supported.
		 */
		versnum = MIN_VERS;
	} else {
		versnum = FUNC10(argv[1]);
	}
	client = FUNC3(address, nconf, prognum, versnum);
	rpc_stat = FUNC0(client, NULLPROC, (xdrproc_t) xdr_void,
			(char *)NULL, (xdrproc_t) xdr_void,
			(char *)NULL, to);
	if (argc == 2) {
		/* Version number was known */
		if (FUNC11(client, prognum, versnum) < 0)
			failure = 1;
		(void) FUNC2(client);
		if (failure)
			FUNC7(1);
		return;
	}
	/* Version number not known */
	(void) FUNC1(client, CLSET_FD_NCLOSE, (char *)NULL);
	(void) FUNC1(client, CLGET_FD, (char *)&fd);
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
		client = FUNC3(address, nconf, prognum, MAX_VERS);
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
			FUNC7(1);
		}
	} else {
		(void) FUNC11(client, prognum, (u_long)0);
		FUNC7(1);
	}
	(void) FUNC2(client);
	for (versnum = minvers; versnum <= maxvers; versnum++) {
		client = FUNC3(address, nconf, prognum, versnum);
		rpc_stat = FUNC0(client, NULLPROC, (xdrproc_t) xdr_void,
				(char *)NULL, (xdrproc_t) xdr_void,
				(char *)NULL, to);
		if (FUNC11(client, prognum, versnum) < 0)
				failure = 1;
		(void) FUNC2(client);
	}
	(void) FUNC5(fd);
	if (failure)
		FUNC7(1);
	return;
}