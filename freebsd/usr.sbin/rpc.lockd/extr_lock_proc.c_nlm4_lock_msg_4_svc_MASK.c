#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct svc_req {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  stat; } ;
struct TYPE_8__ {TYPE_1__ stat; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_2__ nlm4_res ;
struct TYPE_9__ {int /*<<< orphan*/  cookie; } ;
typedef  TYPE_3__ nlm4_lockargs ;

/* Variables and functions */
 int LOCK_ASYNC ; 
 int LOCK_MON ; 
 int LOCK_V4 ; 
 int /*<<< orphan*/  NLM4_LOCK_RES ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct svc_req*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct svc_req*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

void *
FUNC4(nlm4_lockargs *arg, struct svc_req *rqstp)
{
	static nlm4_res res;

	if (debug_level)
		FUNC2("nlm4_lock_msg", rqstp);

	res.cookie = arg->cookie;
	res.stat.stat = FUNC0(arg, rqstp, LOCK_MON | LOCK_ASYNC | LOCK_V4);
	FUNC3(NLM4_LOCK_RES, &res, FUNC1(rqstp));

	return (NULL);
}