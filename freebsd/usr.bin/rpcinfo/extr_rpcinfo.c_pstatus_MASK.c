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
typedef  int /*<<< orphan*/  u_long ;
struct rpc_err {scalar_t__ re_status; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 scalar_t__ RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rpc_err*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(register CLIENT *client, u_long prog, u_long vers)
{
	struct rpc_err rpcerr;

	FUNC0(client, &rpcerr);
	if (rpcerr.re_status != RPC_SUCCESS) {
		FUNC1(client, "rpcinfo");
		FUNC2("program %lu version %lu is not available\n",
			prog, vers);
		return (-1);
	} else {
		FUNC2("program %lu version %lu ready and waiting\n",
			prog, vers);
		return (0);
	}
}