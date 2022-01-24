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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int tsc_freq ; 

__attribute__((used)) static void
FUNC4(int n)
{
	uint64_t end, now;

	/*
	 * Pin the current thread ensure correct behavior if the TSCs
	 * on different CPUs are not in sync.
	 */
	FUNC2();
	now = FUNC1();
	end = now + tsc_freq * n / 1000000;
	do {
		FUNC0();
		now = FUNC1();
	} while (now < end);
	FUNC3();
}