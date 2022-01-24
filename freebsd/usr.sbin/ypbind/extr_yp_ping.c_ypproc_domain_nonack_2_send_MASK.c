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
struct timeval {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  domainname ;
typedef  int /*<<< orphan*/  clnt_res ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 scalar_t__ RPC_SUCCESS ; 
 int /*<<< orphan*/  YPPROC_DOMAIN_NONACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ xdr_bool ; 
 scalar_t__ xdr_domainname ; 

__attribute__((used)) static bool_t *
FUNC2(domainname *argp, CLIENT *clnt)
{
	static bool_t clnt_res;
	struct timeval TIMEOUT = { 0, 0 };

	FUNC1((char *)&clnt_res, 0, sizeof (clnt_res));
	if (FUNC0(clnt, YPPROC_DOMAIN_NONACK,
		(xdrproc_t) xdr_domainname, (caddr_t) argp,
		(xdrproc_t) xdr_bool, (caddr_t) &clnt_res,
		TIMEOUT) != RPC_SUCCESS) {
		return (NULL);
	}
	return (&clnt_res);
}