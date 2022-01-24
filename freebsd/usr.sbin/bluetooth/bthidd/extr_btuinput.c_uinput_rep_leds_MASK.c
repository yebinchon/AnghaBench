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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ EVDEV_RCPT_HW_KBD ; 
 int /*<<< orphan*/  EV_LED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * led_codes ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int32_t
FUNC4(int32_t fd, int state, int mask)
{
	size_t i;
	int32_t rcpt_mask;

	FUNC0(fd >= 0);

	rcpt_mask = FUNC2();
	if (!(rcpt_mask & EVDEV_RCPT_HW_KBD))
		return (0);

	for (i = 0; i < FUNC1(led_codes); i++) {
		if (mask & (1 << i) &&
		    FUNC3(fd, EV_LED, led_codes[i],
					state & (1 << i) ? 1 : 0) < 0)
			return (-1);
	}

	return (0);
}