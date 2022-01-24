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
typedef  int u_int ;

/* Variables and functions */
 int UINT_MAX ; 
 int /*<<< orphan*/  VMW_HVCMD_GETHZ ; 
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int hv_high ; 
 int tsc_freq ; 
 int tsc_is_invariant ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC2(void)
{
	u_int regs[4];

	if (hv_high >= 0x40000010) {
		FUNC0(0x40000010, regs);
		tsc_freq = regs[0] * 1000;
	} else {
		FUNC1(VMW_HVCMD_GETHZ, regs);
		if (regs[1] != UINT_MAX)
			tsc_freq = regs[0] | ((uint64_t)regs[1] << 32);
	}
	tsc_is_invariant = 1;
}