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
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_SYN ; 
 scalar_t__ NONE ; 
 scalar_t__ SYN_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__* consmap ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

int32_t
FUNC4(int32_t fd, int32_t key, int32_t make)
{
	int32_t rcpt_mask;

	FUNC0(fd >= 0);

	rcpt_mask = FUNC2();
	if (!(rcpt_mask & EVDEV_RCPT_HW_KBD))
		return (0);

	if (key >= 0 && key < (int32_t)FUNC1(consmap) &&
	    consmap[key] != NONE) {
		if (FUNC3(fd, EV_KEY, consmap[key], make) > 0 &&
		    FUNC3(fd, EV_SYN, SYN_REPORT, 0) > 0)
			return (0);
	}
	return (-1);
}