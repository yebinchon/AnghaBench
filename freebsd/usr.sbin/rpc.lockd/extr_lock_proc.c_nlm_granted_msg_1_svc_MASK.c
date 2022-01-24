#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct svc_req {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  svid; } ;
struct TYPE_9__ {int /*<<< orphan*/  cookie; TYPE_2__ alock; } ;
typedef  TYPE_3__ nlm_testargs ;
struct TYPE_7__ {int /*<<< orphan*/  stat; } ;
struct TYPE_10__ {TYPE_1__ stat; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_4__ nlm_res ;

/* Variables and functions */
 int /*<<< orphan*/  NLM_GRANTED_RES ; 
 int /*<<< orphan*/  NLM_VERS ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (struct svc_req*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct svc_req*) ; 
 int /*<<< orphan*/  nlm_denied ; 
 int /*<<< orphan*/  nlm_granted ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 

void *
FUNC4(nlm_testargs *arg, struct svc_req *rqstp)
{
	static nlm_res res;

	if (debug_level)
		FUNC2("nlm_granted_msg", rqstp);

	res.cookie = arg->cookie;
	res.stat.stat = FUNC1(arg->alock.svid, &arg->cookie,
		nlm_granted, NULL, NLM_VERS) == 0 ?
		nlm_granted : nlm_denied;

	FUNC3(NLM_GRANTED_RES, &res, FUNC0(rqstp));
	return (NULL);
}