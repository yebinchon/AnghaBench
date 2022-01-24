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
struct TYPE_7__ {int /*<<< orphan*/  cookie; int /*<<< orphan*/  alock; } ;
typedef  TYPE_2__ nlm_unlockargs ;
struct TYPE_6__ {int /*<<< orphan*/  stat; } ;
struct TYPE_8__ {int /*<<< orphan*/  cookie; TYPE_1__ stat; } ;
typedef  TYPE_3__ nlm_res ;

/* Variables and functions */
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (char*,struct svc_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nlm4_lock*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlm4_lock*,int /*<<< orphan*/ ) ; 

nlm_res *
FUNC3(nlm_unlockargs *arg, struct svc_req *rqstp)
{
	static nlm_res res;
	struct nlm4_lock arg4;

	FUNC1(&arg->alock, &arg4);

	if (debug_level)
		FUNC0("nlm_unlock", rqstp);

	res.stat.stat = FUNC2(&arg4, 0);
	res.cookie = arg->cookie;

	return (&res);
}