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
 int MAXCOMLEN ; 
 int XLR_MAX_INTR ; 
 int /*<<< orphan*/ * mips_intr_counters ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

void
FUNC2()
{
	int i;
	char name[MAXCOMLEN + 1];

	/*
	 * Initialize all available vectors so spare IRQ
	 * would show up in systat output
	 */
	for (i = 0; i < XLR_MAX_INTR; i++) {
		FUNC1(name, MAXCOMLEN + 1, "int%d:", i);
		mips_intr_counters[i] = FUNC0(name);
	}
}