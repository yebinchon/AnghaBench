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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  JZ_CORESTS_MIRQ0P ; 
 int /*<<< orphan*/  JZ_REIM_MIRQ0M ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	uint32_t reg;

	/*
	 * Do not expect mbox interrups while writing
	 * mbox
	 */
	reg = FUNC0();
	reg &= ~JZ_REIM_MIRQ0M;
	FUNC4(reg);

	/* Clean mailboxes */
	FUNC2(0);
	FUNC3(0);
	FUNC1(~JZ_CORESTS_MIRQ0P);

	/* Unmask mbox interrupts */
	reg |= JZ_REIM_MIRQ0M;
	FUNC4(reg);
}