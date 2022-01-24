#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct svc_req {int dummy; } ;
struct nlm4_lockargs {int /*<<< orphan*/  state; int /*<<< orphan*/  reclaim; int /*<<< orphan*/  exclusive; int /*<<< orphan*/  block; int /*<<< orphan*/  cookie; int /*<<< orphan*/  alock; } ;
struct TYPE_6__ {int /*<<< orphan*/  stat; } ;
struct TYPE_7__ {TYPE_1__ stat; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_2__ nlm_res ;
struct TYPE_8__ {int /*<<< orphan*/  cookie; int /*<<< orphan*/  state; int /*<<< orphan*/  reclaim; int /*<<< orphan*/  exclusive; int /*<<< orphan*/  block; int /*<<< orphan*/  alock; } ;
typedef  TYPE_3__ nlm_lockargs ;

/* Variables and functions */
 int LOCK_ASYNC ; 
 int LOCK_MON ; 
 int /*<<< orphan*/  NLM_LOCK_RES ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (struct nlm4_lockargs*,struct svc_req*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct svc_req*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

void *
FUNC5(nlm_lockargs *arg, struct svc_req *rqstp)
{
	static nlm_res res;
	struct nlm4_lockargs arg4;

	FUNC3(&arg->alock, &arg4.alock);
	arg4.cookie = arg->cookie;
	arg4.block = arg->block;
	arg4.exclusive = arg->exclusive;
	arg4.reclaim = arg->reclaim;
	arg4.state = arg->state;

	if (debug_level)
		FUNC2("nlm_lock_msg", rqstp);

	res.cookie = arg->cookie;
	res.stat.stat = FUNC0(&arg4, rqstp, LOCK_ASYNC | LOCK_MON);
	FUNC4(NLM_LOCK_RES, &res, FUNC1(rqstp));

	return (NULL);
}