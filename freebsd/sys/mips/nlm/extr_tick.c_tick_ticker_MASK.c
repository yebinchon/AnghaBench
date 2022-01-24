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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  counter_lower_last ; 
 int /*<<< orphan*/  counter_upper ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static uint64_t
FUNC4(void)
{
	uint64_t ret;
	uint32_t ticktock;
	uint32_t t_lower_last, t_upper;

	/*
	 * Disable preemption because we are working with cpu specific data.
	 */
	FUNC1();

	/*
	 * Note that even though preemption is disabled, interrupts are
	 * still enabled. In particular there is a race with clock_intr()
	 * reading the values of 'counter_upper' and 'counter_lower_last'.
	 *
	 * XXX this depends on clock_intr() being executed periodically
	 * so that 'counter_upper' and 'counter_lower_last' are not stale.
	 */
	do {
		t_upper = FUNC0(counter_upper);
		t_lower_last = FUNC0(counter_lower_last);
	} while (t_upper != FUNC0(counter_upper));

	ticktock = FUNC3();

	FUNC2();

	/* COUNT register wrapped around */
	if (ticktock < t_lower_last)
		t_upper++;

	ret = ((uint64_t)t_upper << 32) | ticktock;
	return (ret);
}