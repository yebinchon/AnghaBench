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
struct TYPE_7__ {int /*<<< orphan*/  sg_lock; } ;
struct TYPE_6__ {scalar_t__ xp_registered; TYPE_2__* xp_group; } ;
typedef  TYPE_1__ SVCXPRT ;
typedef  TYPE_2__ SVCGROUP ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(SVCXPRT *xprt)
{
	SVCGROUP *grp = xprt->xp_group;

	FUNC1(&grp->sg_lock);
	if (xprt->xp_registered == FALSE) {
		/* Already unregistered by another thread */
		FUNC2(&grp->sg_lock);
		return;
	}
	FUNC3(xprt);
	FUNC2(&grp->sg_lock);

	FUNC0(xprt);
}