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
 int JZ_CORESTS_MIRQ0P ; 
 int JZ_REIM_MIRQ0M ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

void
FUNC6(int cpuid)
{
	unsigned reg;

	/*
	 * Clear any pending IPIs.
	 */
	FUNC2(~(JZ_CORESTS_MIRQ0P << cpuid));

	/* Allow IPI mbox for this core */
	reg = FUNC1();
	reg |= (JZ_REIM_MIRQ0M << cpuid);
	FUNC3(reg);

	/*
	 * Unmask the ipi interrupts.
	 */
	reg = FUNC0(FUNC4());
	FUNC5(reg);
}