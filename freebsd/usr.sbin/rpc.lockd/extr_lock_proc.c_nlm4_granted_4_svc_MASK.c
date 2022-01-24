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
typedef  TYPE_3__ nlm4_testargs ;
struct TYPE_7__ {int /*<<< orphan*/  stat; } ;
struct TYPE_10__ {int /*<<< orphan*/  cookie; TYPE_1__ stat; } ;
typedef  TYPE_4__ nlm4_res ;

/* Variables and functions */
 int /*<<< orphan*/  NLM_VERS4 ; 
 scalar_t__ debug_level ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct svc_req*) ; 
 int /*<<< orphan*/  nlm4_denied ; 
 int /*<<< orphan*/  nlm4_granted ; 

nlm4_res *
FUNC2(nlm4_testargs *arg, struct svc_req *rqstp)
{
	static nlm4_res res;

	if (debug_level)
		FUNC1("nlm4_granted", rqstp);

	res.stat.stat = FUNC0(arg->alock.svid, &arg->cookie,
		nlm4_granted, NULL, NLM_VERS4) == 0 ?
		nlm4_granted : nlm4_denied;

	/* copy cookie from arg to result.  See comment in nlm_test_1() */
	res.cookie = arg->cookie;

	return (&res);
}