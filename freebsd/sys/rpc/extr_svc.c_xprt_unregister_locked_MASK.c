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
struct TYPE_7__ {int /*<<< orphan*/  sg_xlist; int /*<<< orphan*/  sg_lock; } ;
struct TYPE_6__ {scalar_t__ xp_registered; TYPE_2__* xp_group; } ;
typedef  TYPE_1__ SVCXPRT ;
typedef  TYPE_2__ SVCGROUP ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xp_link ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(SVCXPRT *xprt)
{
	SVCGROUP *grp = xprt->xp_group;

	FUNC2(&grp->sg_lock, MA_OWNED);
	FUNC0(xprt->xp_registered == TRUE,
	    ("xprt_unregister_locked: not registered"));
	FUNC3(xprt);
	FUNC1(&grp->sg_xlist, xprt, xp_link);
	xprt->xp_registered = FALSE;
}