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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

void
FUNC8(int cpuid)
{
	unsigned ciu_int_mask, clock_int_mask, ipi_int_mask;

	/*
	 * Set the exception base.
	 */
	FUNC4(0x80000000);

	/*
	 * Clear any pending IPIs.
	 */
	FUNC1(FUNC0(cpuid), 0xffffffff);

	/*
	 * Set up interrupts.
	 */
	FUNC5();

	/*
	 * Unmask the clock, ipi and ciu interrupts.
	 */
	ciu_int_mask = FUNC2(0);
	clock_int_mask = FUNC2(5);
	ipi_int_mask = FUNC2(FUNC6());
	FUNC7(ciu_int_mask | clock_int_mask | ipi_int_mask);

	FUNC3();
}