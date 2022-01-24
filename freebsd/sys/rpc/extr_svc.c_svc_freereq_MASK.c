#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ svc_ah_ops; } ;
struct svc_req {scalar_t__ rq_args; struct svc_req* rq_addr; scalar_t__ rq_xprt; TYPE_4__ rq_auth; TYPE_1__* rq_thread; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* sp_done ) (TYPE_1__*,struct svc_req*) ;} ;
struct TYPE_5__ {TYPE_2__* st_pool; } ;
typedef  TYPE_1__ SVCTHREAD ;
typedef  TYPE_2__ SVCPOOL ;

/* Variables and functions */
 int /*<<< orphan*/  M_RPC ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct svc_req*) ; 

void
FUNC5(struct svc_req *rqstp)
{
	SVCTHREAD *st;
	SVCPOOL *pool;

	st = rqstp->rq_thread;
	if (st) {
		pool = st->st_pool;
		if (pool->sp_done)
			pool->sp_done(st, rqstp);
	}

	if (rqstp->rq_auth.svc_ah_ops)
		FUNC0(&rqstp->rq_auth);

	if (rqstp->rq_xprt) {
		FUNC1(rqstp->rq_xprt);
	}

	if (rqstp->rq_addr)
		FUNC2(rqstp->rq_addr, M_SONAME);

	if (rqstp->rq_args)
		FUNC3(rqstp->rq_args);

	FUNC2(rqstp, M_RPC);
}