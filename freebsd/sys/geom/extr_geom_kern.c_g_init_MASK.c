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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  RFHIGHPID ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_FIRST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  g_down_procbody ; 
 int /*<<< orphan*/  g_down_td ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  g_event_procbody ; 
 int /*<<< orphan*/  g_event_td ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  g_proc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_up_procbody ; 
 int /*<<< orphan*/  g_up_td ; 
 int /*<<< orphan*/  geom_shutdown ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  topology_lock ; 

void
FUNC7(void)
{

	FUNC4(G_T_TOPOLOGY, "g_ignition");
	FUNC6(&topology_lock, "GEOM topology");
	FUNC3();
	FUNC2();
	FUNC1();
	FUNC5(g_event_procbody, NULL, &g_proc, &g_event_td,
	    RFHIGHPID, 0, "geom", "g_event");
	FUNC5(g_up_procbody, NULL, &g_proc, &g_up_td,
	    RFHIGHPID, 0, "geom", "g_up");
	FUNC5(g_down_procbody, NULL, &g_proc, &g_down_td,
	    RFHIGHPID, 0, "geom", "g_down");
	FUNC0(shutdown_pre_sync, geom_shutdown, NULL,
		SHUTDOWN_PRI_FIRST);
}