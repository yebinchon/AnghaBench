#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
typedef  scalar_t__ rpcvers_t ;
typedef  int /*<<< orphan*/  res1 ;
typedef  int /*<<< orphan*/  nlm_res ;
struct TYPE_6__ {int /*<<< orphan*/  state; int /*<<< orphan*/  reclaim; int /*<<< orphan*/  alock; int /*<<< orphan*/  exclusive; int /*<<< orphan*/  block; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_1__ nlm_lockargs ;
typedef  int /*<<< orphan*/  nlm4_res ;
struct TYPE_7__ {int /*<<< orphan*/  state; int /*<<< orphan*/  reclaim; int /*<<< orphan*/  alock; int /*<<< orphan*/  exclusive; int /*<<< orphan*/  block; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_2__ nlm4_lockargs ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 scalar_t__ NLM_VERS4 ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpc_callextra*,struct timeval) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpc_callextra*,struct timeval) ; 

__attribute__((used)) static enum clnt_stat
FUNC5(rpcvers_t vers, nlm4_lockargs *args, nlm4_res *res, CLIENT *client,
    struct rpc_callextra *ext, struct timeval timo)
{
	if (vers == NLM_VERS4) {
		return FUNC1(args, res, client, ext, timo);
	} else {
		nlm_lockargs args1;
		nlm_res res1;
		enum clnt_stat stat;

		args1.cookie = args->cookie;
		args1.block = args->block;
		args1.exclusive = args->exclusive;
		FUNC3(&args1.alock, &args->alock);
		args1.reclaim = args->reclaim;
		args1.state = args->state;
		FUNC0(&res1, 0, sizeof(res1));

		stat = FUNC4(&args1, &res1, client, ext, timo);

		if (stat == RPC_SUCCESS) {
			FUNC2(res, &res1);
		}

		return (stat);
	}
}