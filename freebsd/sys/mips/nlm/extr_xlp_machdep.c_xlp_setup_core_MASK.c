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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  LSU_DEFEATURE ; 
 int /*<<< orphan*/  SCHED_DEFEATURE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void)
{
	uint64_t reg;

	reg = FUNC0(LSU_DEFEATURE);
	/* Enable Unaligned and L2HPE */
	reg |= (1 << 30) | (1 << 23);
	/*
	 * Experimental : Enable SUE
	 * Speculative Unmap Enable. Enable speculative L2 cache request for
	 * unmapped access.
	 */
	reg |= (1ull << 31);
	/* Clear S1RCM  - A0 errata */
	reg &= ~0xeull;
	FUNC1(LSU_DEFEATURE, reg);

	reg = FUNC0(SCHED_DEFEATURE);
	/* Experimental: Disable BRU accepting ALU ops - A0 errata */
	reg |= (1 << 24);
	FUNC1(SCHED_DEFEATURE, reg);
}