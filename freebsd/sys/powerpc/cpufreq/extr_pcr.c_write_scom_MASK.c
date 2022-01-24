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
typedef  int register_t ;

/* Variables and functions */
 int PSL_EE ; 
 int SCOMC_WRITE ; 
 int /*<<< orphan*/  SPR_SCOMC ; 
 int /*<<< orphan*/  SPR_SCOMD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC5(register_t address, uint64_t value)
{
	register_t msr;
	#ifndef __powerpc64__
	register_t hi, lo, scratch;
	#endif

	msr = FUNC1();
	FUNC2(msr & ~PSL_EE); FUNC0();

	#ifdef __powerpc64__
	mtspr(SPR_SCOMD, value);
	#else
	hi = (value >> 32) & 0xffffffff;
	lo = value & 0xffffffff;
	FUNC4(SPR_SCOMD, hi, lo, scratch); 
	#endif
	FUNC0();
	FUNC3(SPR_SCOMC, address | SCOMC_WRITE);
	FUNC0();

	FUNC2(msr); FUNC0();
}