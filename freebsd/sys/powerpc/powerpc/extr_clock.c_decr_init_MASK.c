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
struct cpuref {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int curcpu ; 
 int /*<<< orphan*/ * decr_counts ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int initialized ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mftb ; 
 int /*<<< orphan*/  FUNC2 (struct cpuref*) ; 
 scalar_t__ FUNC3 (struct cpuref*) ; 
 int FUNC4 (struct cpuref*) ; 
 int ps_per_tick ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int ticks_per_sec ; 

void
FUNC7(void)
{
	struct cpuref cpu;
	char buf[32];

	/*
	 * Check the BSP's timebase frequency. Sometimes we can't find the BSP,
	 * so fall back to the first CPU in this case.
	 */
	if (FUNC3(&cpu) != 0)
		FUNC2(&cpu);
	ticks_per_sec = FUNC4(&cpu);
	ps_per_tick = 1000000000000 / ticks_per_sec;

	FUNC5(mftb, ticks_per_sec, 0);
	FUNC6(buf, sizeof(buf), "cpu%d:decrementer", curcpu);
	FUNC1(buf, &decr_counts[curcpu]);
	FUNC0(NULL);
	initialized = 1;
}