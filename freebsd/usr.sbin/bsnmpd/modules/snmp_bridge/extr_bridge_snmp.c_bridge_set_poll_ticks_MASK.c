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
 int /*<<< orphan*/ * bridge_data_timer ; 
 int /*<<< orphan*/  bridge_module ; 
 int bridge_poll_ticks ; 
 int /*<<< orphan*/  bridge_update_all ; 
 int /*<<< orphan*/ * FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(int poll_ticks)
{
	if (bridge_data_timer != NULL)
		FUNC1(bridge_data_timer);

	bridge_poll_ticks = poll_ticks;
	bridge_data_timer = FUNC0(bridge_poll_ticks,
	    bridge_poll_ticks, bridge_update_all, NULL, bridge_module);
}