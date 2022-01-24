#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct svc_req {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  stat; } ;
struct TYPE_5__ {TYPE_1__ stat; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_2__ nlm_res ;

/* Variables and functions */
 int /*<<< orphan*/  NLM_VERS ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct svc_req*) ; 

void *
FUNC2(nlm_res *arg, struct svc_req *rqstp)
{
	if (debug_level)
		FUNC1("nlm_unlock_res", rqstp);

	FUNC0(-1, &arg->cookie, arg->stat.stat, NULL, NLM_VERS);

	return (NULL);
}