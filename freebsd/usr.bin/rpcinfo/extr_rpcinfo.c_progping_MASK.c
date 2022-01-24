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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLSET_VERS ; 
 scalar_t__ MAX_VERS ; 
 scalar_t__ MIN_VERS ; 
 int /*<<< orphan*/  NULLPROC ; 
 int RPC_PROGVERSMISMATCH ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC3 (char*,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rpc_err*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,scalar_t__,scalar_t__,struct netconfig*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct netconfig* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static void
FUNC14(char *netid, int argc, char **argv)
{
	CLIENT *client;
	struct timeval to;
	enum clnt_stat rpc_stat;
	u_long prognum, versnum, minvers, maxvers;
	struct rpc_err rpcerr;
	int failure = 0;
	struct netconfig *nconf;

	if (argc < 2 || argc > 3 || (netid == NULL))
		FUNC13();
	prognum = FUNC10(argv[1]);
	if (argc == 2) { /* Version number not known */
		/*
		 * A call to version 0 should fail with a program/version
		 * mismatch, and give us the range of versions supported.
		 */
		versnum = MIN_VERS;
	} else {
		versnum = FUNC11(argv[2]);
	}
	if (netid) {
		nconf = FUNC9(netid);
		if (nconf == (struct netconfig *)NULL)
			FUNC7(1, "could not find %s", netid);
		client = FUNC6(argv[0], prognum, versnum, nconf);
	} else {
		client = FUNC3(argv[0], prognum, versnum, "NETPATH");
	}
	if (client == (CLIENT *)NULL) {
		FUNC5("rpcinfo");
		FUNC8(1);
	}
	to.tv_sec = 10;
	to.tv_usec = 0;
	rpc_stat = FUNC0(client, NULLPROC, (xdrproc_t) xdr_void,
			(char *)NULL, (xdrproc_t) xdr_void,
			(char *)NULL, to);
	if (argc == 3) {
		/* Version number was known */
		if (FUNC12(client, prognum, versnum) < 0)
			failure = 1;
		(void) FUNC2(client);
		if (failure)
			FUNC8(1);
		return;
	}
	/* Version number not known */
	if (rpc_stat == RPC_PROGVERSMISMATCH) {
		FUNC4(client, &rpcerr);
		minvers = rpcerr.re_vers.low;
		maxvers = rpcerr.re_vers.high;
	} else if (rpc_stat == RPC_SUCCESS) {
		/*
		 * Oh dear, it DOES support version 0.
		 * Let's try version MAX_VERS.
		 */
		versnum = MAX_VERS;
		(void) FUNC1(client, CLSET_VERS, (char *)&versnum);
		rpc_stat = FUNC0(client, NULLPROC,
				(xdrproc_t) xdr_void, (char *)NULL,
				(xdrproc_t)  xdr_void, (char *)NULL, to);
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
			(void) FUNC12(client, prognum, MAX_VERS);
			FUNC8(1);
		}
	} else {
		(void) FUNC12(client, prognum, (u_long)0);
		FUNC8(1);
	}
	for (versnum = minvers; versnum <= maxvers; versnum++) {
		(void) FUNC1(client, CLSET_VERS, (char *)&versnum);
		rpc_stat = FUNC0(client, NULLPROC, (xdrproc_t) xdr_void,
					(char *)NULL, (xdrproc_t) xdr_void,
					(char *)NULL, to);
		if (FUNC12(client, prognum, versnum) < 0)
				failure = 1;
	}
	(void) FUNC2(client);
	if (failure)
		FUNC8(1);
	return;
}