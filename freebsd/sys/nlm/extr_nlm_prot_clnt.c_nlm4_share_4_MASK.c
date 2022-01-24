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
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
typedef  int /*<<< orphan*/  nlm4_shareres ;
typedef  int /*<<< orphan*/  nlm4_shareargs ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct rpc_callextra*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval) ; 
 int /*<<< orphan*/  NLM4_SHARE ; 
 scalar_t__ xdr_nlm4_shareargs ; 
 scalar_t__ xdr_nlm4_shareres ; 

enum clnt_stat 
FUNC1(nlm4_shareargs *argp, nlm4_shareres *clnt_res, CLIENT *clnt, struct rpc_callextra *ext, struct timeval timo)
{
	return (FUNC0(clnt, ext, NLM4_SHARE,
		(xdrproc_t) xdr_nlm4_shareargs, (caddr_t) argp,
		(xdrproc_t) xdr_nlm4_shareres, (caddr_t) clnt_res,
		timo));
}