#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int ND6_SLOWTIMER_INTERVAL ; 
 int /*<<< orphan*/  V_nd6_lock ; 
 int /*<<< orphan*/  V_nd6_onlink_mtx ; 
 int /*<<< orphan*/  V_nd6_slowtimo_ch ; 
 int /*<<< orphan*/  V_nd6_timer_ch ; 
 int /*<<< orphan*/  V_nd_prefix ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curvnet ; 
 int hz ; 
 int /*<<< orphan*/  iflladdr_event ; 
 void* iflladdr_event_eh ; 
 int /*<<< orphan*/  ifnet_link_event ; 
 void* ifnet_link_event_eh ; 
 int /*<<< orphan*/  lle_event ; 
 void* lle_event_eh ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  nd6_iflladdr ; 
 int /*<<< orphan*/  nd6_ifnet_link_event ; 
 int /*<<< orphan*/  nd6_lle_event ; 
 int /*<<< orphan*/  nd6_slowtimo ; 
 int /*<<< orphan*/  nd6_timer ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

void
FUNC9(void)
{

	FUNC5(&V_nd6_onlink_mtx, "nd6 onlink", NULL, MTX_DEF);
	FUNC8(&V_nd6_lock, "nd6 list");

	FUNC2(&V_nd_prefix);
	FUNC7();

	/* Start timers. */
	FUNC3(&V_nd6_slowtimo_ch, 0);
	FUNC4(&V_nd6_slowtimo_ch, ND6_SLOWTIMER_INTERVAL * hz,
	    nd6_slowtimo, curvnet);

	FUNC3(&V_nd6_timer_ch, 0);
	FUNC4(&V_nd6_timer_ch, hz, nd6_timer, curvnet);

	FUNC6();
	if (FUNC1(curvnet)) {
		lle_event_eh = FUNC0(lle_event, nd6_lle_event,
		    NULL, EVENTHANDLER_PRI_ANY);
		iflladdr_event_eh = FUNC0(iflladdr_event,
		    nd6_iflladdr, NULL, EVENTHANDLER_PRI_ANY);
		ifnet_link_event_eh = FUNC0(ifnet_link_event,
		    nd6_ifnet_link_event, NULL, EVENTHANDLER_PRI_ANY);
	}
}