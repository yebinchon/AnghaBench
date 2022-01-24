#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct svc_req {int /*<<< orphan*/  rq_xid; TYPE_4__* rq_xprt; } ;
struct TYPE_6__ {int rj_why; int /*<<< orphan*/  rj_stat; } ;
struct TYPE_5__ {int /*<<< orphan*/  rp_stat; } ;
struct rpc_msg {TYPE_2__ rjcted_rply; TYPE_1__ rm_reply; int /*<<< orphan*/  rm_direction; int /*<<< orphan*/  rm_xid; } ;
typedef  enum auth_stat { ____Placeholder_auth_stat } auth_stat ;
struct TYPE_8__ {TYPE_3__* xp_pool; } ;
struct TYPE_7__ {scalar_t__ sp_rcache; } ;
typedef  TYPE_4__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_ERROR ; 
 int /*<<< orphan*/  MSG_DENIED ; 
 int /*<<< orphan*/  REPLY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct rpc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_req*,struct rpc_msg*,int /*<<< orphan*/ *) ; 

void
FUNC3(struct svc_req *rqstp, enum auth_stat why)
{
	SVCXPRT *xprt = rqstp->rq_xprt;
	struct rpc_msg rply;

	rply.rm_xid = rqstp->rq_xid;
	rply.rm_direction = REPLY;
	rply.rm_reply.rp_stat = MSG_DENIED;
	rply.rjcted_rply.rj_stat = AUTH_ERROR;
	rply.rjcted_rply.rj_why = why;

	if (xprt->xp_pool->sp_rcache)
		FUNC0(xprt->xp_pool->sp_rcache,
		    &rply, FUNC1(rqstp), NULL);

	FUNC2(rqstp, &rply, NULL);
}