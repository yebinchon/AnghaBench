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
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  resultproc_t ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;

/* Variables and functions */
 int /*<<< orphan*/  NULLPROC ; 
 int RPC_SUCCESS ; 
 int RPC_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ reply_proc ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static void
FUNC7(int argc, char **argv)
{
	enum clnt_stat rpc_stat;
	u_long prognum, vers;

	if (argc != 2)
		FUNC6();
	prognum = FUNC3(argv[0]);
	vers = FUNC4(argv[1]);
	rpc_stat = FUNC5(prognum, vers, NULLPROC,
		(xdrproc_t) xdr_void, (char *)NULL, (xdrproc_t) xdr_void,
		(char *)NULL, (resultproc_t) reply_proc, NULL);
	if ((rpc_stat != RPC_SUCCESS) && (rpc_stat != RPC_TIMEDOUT))
		FUNC1(1, "broadcast failed: %s", FUNC0(rpc_stat));
	FUNC2(0);
}