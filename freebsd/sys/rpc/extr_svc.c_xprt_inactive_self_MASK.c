#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  xp_active; int /*<<< orphan*/ * xp_thread; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

void
FUNC1(SVCXPRT *xprt)
{

	FUNC0(xprt->xp_thread != NULL,
	    ("xprt_inactive_self(%p) with NULL xp_thread", xprt));
	xprt->xp_active = FALSE;
}