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
struct TYPE_6__ {int /*<<< orphan*/  stat; } ;
struct TYPE_7__ {TYPE_1__ stat; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_2__ nlm4_res ;
struct TYPE_8__ {int /*<<< orphan*/  alock; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_3__ nlm4_cancargs ;

/* Variables and functions */
 int LOCK_CANCEL ; 
 int LOCK_V4 ; 
 int /*<<< orphan*/  NLM4_CANCEL_RES ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct svc_req*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void *
FUNC4(nlm4_cancargs *arg, struct svc_req *rqstp)
{
	static nlm4_res res;

	if (debug_level)
		FUNC1("nlm4_cancel_msg", rqstp);

	res.cookie = arg->cookie;
	/*
	 * Since at present we never return 'nlm_blocked', there can never be
	 * a lock to cancel, so this call always fails.
	 */
	res.stat.stat = FUNC3(&arg->alock, LOCK_CANCEL | LOCK_V4);
	FUNC2(NLM4_CANCEL_RES, &res, FUNC0(rqstp));
	return (NULL);
}