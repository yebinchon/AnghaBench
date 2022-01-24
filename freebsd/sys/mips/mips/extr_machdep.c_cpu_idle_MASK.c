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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MIPS_INT_MASK ; 
 int MIPS_SR_INT_IE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(int busy)
{
	FUNC0((FUNC5() & MIPS_SR_INT_IE) != 0,
		("interrupts disabled in idle process."));
	FUNC0((FUNC5() & MIPS_INT_MASK) != 0,
		("all interrupts masked in idle process."));

	if (!busy) {
		FUNC3();
		FUNC2();
	}
	FUNC6();
	if (!busy) {
		FUNC1();
		FUNC4();
	}
}