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
struct TYPE_9__ {int /*<<< orphan*/  sg_lock; int /*<<< orphan*/  sg_xlist; } ;
struct TYPE_8__ {int sp_groupcount; TYPE_3__* sp_groups; int /*<<< orphan*/  sp_nextgroup; } ;
struct TYPE_7__ {int /*<<< orphan*/  xp_active; int /*<<< orphan*/  xp_registered; TYPE_3__* xp_group; TYPE_2__* xp_pool; } ;
typedef  TYPE_1__ SVCXPRT ;
typedef  TYPE_2__ SVCPOOL ;
typedef  TYPE_3__ SVCGROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xp_link ; 

void
FUNC5(SVCXPRT *xprt)
{
	SVCPOOL *pool = xprt->xp_pool;
	SVCGROUP *grp;
	int g;

	FUNC0(xprt);
	g = FUNC2(&pool->sp_nextgroup, 1) % pool->sp_groupcount;
	xprt->xp_group = grp = &pool->sp_groups[g];
	FUNC3(&grp->sg_lock);
	xprt->xp_registered = TRUE;
	xprt->xp_active = FALSE;
	FUNC1(&grp->sg_xlist, xprt, xp_link);
	FUNC4(&grp->sg_lock);
}