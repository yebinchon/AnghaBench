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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ tsc_freq ; 

void
FUNC2(void)
{

	/*
	 * Use TSC to wait for a usec if present, otherwise fall back
	 * to reading from port 0x84.  We can't call into timecounters
	 * for this delay since timecounters might use spin locks.
	 *
	 * Note that unlike delay_tc(), this uses the TSC even if it
	 * is not P-state invariant.  For this function it is ok to
	 * wait even a few usecs.
	 */
	if (tsc_freq != 0)
		FUNC0(1);
	else
		FUNC1(0x84);
}