#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  cl_auth; } ;
typedef  TYPE_1__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  MOUNTPROC_UMNTALL ; 
 int /*<<< orphan*/  MOUNTPROG ; 
 int /*<<< orphan*/  MOUNTVERS ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval) ; 
 TYPE_1__* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ xdr_void ; 

int
FUNC8(char *hostname) {
	enum clnt_stat clnt_stat;
	struct timeval try;
	CLIENT *clp;

	try.tv_sec = 3;
	try.tv_usec = 0;
	clp = FUNC3(hostname, MOUNTPROG, MOUNTVERS, "udp",
	    &try);
	if (clp == NULL) {
		FUNC7("%s: %s", hostname, FUNC5("MOUNTPROG"));
		return (0);
	}
	clp->cl_auth = FUNC1();
	clnt_stat = FUNC2(clp, MOUNTPROC_UMNTALL,
	    (xdrproc_t)xdr_void, (caddr_t)0,
	    (xdrproc_t)xdr_void, (caddr_t)0, try);
	if (clnt_stat != RPC_SUCCESS)
		FUNC7("%s: %s", hostname, FUNC6(clp, "MOUNTPROC_UMNTALL"));
	FUNC0(clp->cl_auth);
	FUNC4(clp);
	return (clnt_stat == RPC_SUCCESS);
}