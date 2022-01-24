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
 int FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 

void
FUNC5(void)
{
	int core;

	core = FUNC0();

	FUNC4("cpu%u: NMI detected\n", core);
	FUNC4("cpu%u: Exception PC: %p\n", core, (void *)FUNC2());
	FUNC4("cpu%u: status %#x cause %#x\n", core, FUNC3(), FUNC1());

	/*
	 * This is the end
	 * Beautiful friend
	 *
	 * Just wait for Soft Reset to come and take us
	 */
	for (;;)
		continue;
}