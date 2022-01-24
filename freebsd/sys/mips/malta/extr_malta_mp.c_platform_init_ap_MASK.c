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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(int cpuid)
{
	uint32_t clock_int_mask;
	uint32_t ipi_intr_mask;

	/*
	 * Clear any pending IPIs.
	 */
	FUNC2();

	/*
	 * Unmask the clock and ipi interrupts.
	 */
	ipi_intr_mask = FUNC5(FUNC3());
	clock_int_mask = FUNC0(5);
	FUNC4(ipi_intr_mask | clock_int_mask);

	FUNC1();
}