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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  acpi_timer_dev ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC2(void)
{
    uint32_t u1, u2, u3;

    u1 = FUNC0();
    u2 = FUNC0();
    u3 = FUNC0();

    FUNC1(acpi_timer_dev, "timer test in progress, reboot to quit.\n");
    for (;;) {
	/*
	 * The failure case is where u3 > u1, but u2 does not fall between
	 * the two, ie. it contains garbage.
	 */
	if (u3 > u1) {
	    if (u2 < u1 || u2 > u3)
		FUNC1(acpi_timer_dev,
			      "timer is not monotonic: 0x%08x,0x%08x,0x%08x\n",
			      u1, u2, u3);
	}
	u1 = u2;
	u2 = u3;
	u3 = FUNC0();
    }
}