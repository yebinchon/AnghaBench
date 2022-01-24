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
 int EBUSY ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int
FUNC3(int herz)
{

#if defined(HAS_TIMER_SPKR)
	if (herz) {
		if (timer_spkr_acquire())
			return (EBUSY);
		timer_spkr_setfreq(herz);
	} else
		timer_spkr_release();
#endif

	return (0);
}