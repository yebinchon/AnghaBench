#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sg_lock; int /*<<< orphan*/  sg_active; } ;
struct TYPE_6__ {int /*<<< orphan*/  xp_pool; int /*<<< orphan*/ * xp_thread; scalar_t__ xp_active; int /*<<< orphan*/  xp_registered; TYPE_2__* xp_group; } ;
typedef  TYPE_1__ SVCXPRT ;
typedef  TYPE_2__ SVCGROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xp_alink ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(SVCXPRT *xprt)
{
	SVCGROUP *grp = xprt->xp_group;

	FUNC1(&grp->sg_lock);

	if (!xprt->xp_registered) {
		/*
		 * Race with xprt_unregister - we lose.
		 */
		FUNC2(&grp->sg_lock);
		return;
	}

	if (!xprt->xp_active) {
		xprt->xp_active = TRUE;
		if (xprt->xp_thread == NULL) {
			if (!FUNC3(xprt->xp_pool) ||
			    !FUNC4(xprt))
				FUNC0(&grp->sg_active, xprt,
				    xp_alink);
		}
	}

	FUNC2(&grp->sg_lock);
}