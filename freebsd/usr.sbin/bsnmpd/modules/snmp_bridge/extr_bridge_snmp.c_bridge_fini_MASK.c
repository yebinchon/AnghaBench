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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * bridge_data_timer ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  bridge_module ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * bridge_tc_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_bridge ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(void)
{
	FUNC3(bridge_module);
	FUNC4(reg_bridge);

	if (bridge_data_timer != NULL) {
		FUNC5(bridge_data_timer);
		bridge_data_timer = NULL;
	}

	if (bridge_tc_timer != NULL) {
		FUNC5(bridge_tc_timer);
		bridge_tc_timer = NULL;
	}

	FUNC1();
	FUNC2();
	FUNC0();

	return (0);
}