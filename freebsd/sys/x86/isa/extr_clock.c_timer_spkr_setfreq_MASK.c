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
 int /*<<< orphan*/  TIMER_CNTR2 ; 
 int /*<<< orphan*/  clock_lock ; 
 int i8254_freq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void
FUNC3(int freq)
{

	freq = i8254_freq / freq;
	FUNC0(&clock_lock);
	FUNC2(TIMER_CNTR2, freq & 0xff);
	FUNC2(TIMER_CNTR2, freq >> 8);
	FUNC1(&clock_lock);
}