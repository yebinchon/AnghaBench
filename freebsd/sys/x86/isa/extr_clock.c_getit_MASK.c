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
 int /*<<< orphan*/  TIMER_CNTR0 ; 
 int TIMER_LATCH ; 
 int /*<<< orphan*/  TIMER_MODE ; 
 int TIMER_SEL0 ; 
 int /*<<< orphan*/  clock_lock ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(void)
{
	int high, low;

	FUNC1(&clock_lock);

	/* Select timer0 and latch counter value. */
	FUNC3(TIMER_MODE, TIMER_SEL0 | TIMER_LATCH);

	low = FUNC0(TIMER_CNTR0);
	high = FUNC0(TIMER_CNTR0);

	FUNC2(&clock_lock);
	return ((high << 8) | low);
}