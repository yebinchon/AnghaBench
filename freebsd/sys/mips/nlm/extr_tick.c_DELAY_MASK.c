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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int cycles_per_usec ; 
 int FUNC2 () ; 

void
FUNC3(int n)
{
	uint32_t cur, last, delta, usecs;

	FUNC0();
	/*
	 * This works by polling the timer and counting the number of
	 * microseconds that go by.
	 */
	last = FUNC2();
	delta = usecs = 0;

	while (n > usecs) {
		cur = FUNC2();

		/* Check to see if the timer has wrapped around. */
		if (cur < last)
			delta += cur + (0xffffffff - last) + 1;
		else
			delta += cur - last;

		last = cur;

		if (delta >= cycles_per_usec) {
			usecs += delta / cycles_per_usec;
			delta %= cycles_per_usec;
		}
	}
	FUNC1();
}