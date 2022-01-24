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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(device_t dev, device_t child, int state)
{
	device_t pcib;
	int dstate;

	/*
	 * Set the device to the given state.  If the firmware suggests
	 * a different power state, use it instead.  If power management
	 * is not present, the firmware is responsible for managing
	 * device power.  Skip children who aren't attached since they
	 * are handled separately.
	 */
	pcib = FUNC1(dev);
	dstate = state;
	if (FUNC2(child) &&
	    FUNC0(pcib, child, &dstate) == 0)
		FUNC3(child, dstate);
}