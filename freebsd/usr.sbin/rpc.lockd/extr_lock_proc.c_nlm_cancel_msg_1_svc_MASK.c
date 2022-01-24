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
struct nlm4_lock {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  stat; } ;
struct TYPE_7__ {TYPE_1__ stat; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_2__ nlm_res ;
struct TYPE_8__ {int /*<<< orphan*/  cookie; int /*<<< orphan*/  alock; } ;
typedef  TYPE_3__ nlm_cancargs ;

/* Variables and functions */
 int /*<<< orphan*/  LOCK_CANCEL ; 
 int /*<<< orphan*/  NLM_CANCEL_RES ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct svc_req*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nlm4_lock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm4_lock*,int /*<<< orphan*/ ) ; 

void *
FUNC5(nlm_cancargs *arg, struct svc_req *rqstp)
{
	static nlm_res res;
	struct nlm4_lock arg4;

	FUNC2(&arg->alock, &arg4);

	if (debug_level)
		FUNC1("nlm_cancel_msg", rqstp);

	res.cookie = arg->cookie;
	/*
	 * Since at present we never return 'nlm_blocked', there can never be
	 * a lock to cancel, so this call always fails.
	 */
	res.stat.stat = FUNC4(&arg4, LOCK_CANCEL);
	FUNC3(NLM_CANCEL_RES, &res, FUNC0(rqstp));
	return (NULL);
}