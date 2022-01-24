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
union msrinfo {int* regs; void* msr; } ;
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 size_t LONGRUN_MODE_UNKNOWN ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  MSR_TMx86_LONGRUN ; 
 int /*<<< orphan*/  MSR_TMx86_LONGRUN_FLAGS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int** longrun_modes ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static u_int
FUNC5(u_int mode)
{
	register_t	saveintr;
	union msrinfo	msrinfo;

	if (mode >= LONGRUN_MODE_UNKNOWN) {
		return (0);
	}

	saveintr = FUNC1();

	/* Write LongRun mode values to Model Specific Register. */
	msrinfo.msr = FUNC3(MSR_TMx86_LONGRUN);
	msrinfo.regs[0] = FUNC0(msrinfo.regs[0],
					     longrun_modes[mode][0]);
	msrinfo.regs[1] = FUNC0(msrinfo.regs[1],
					     longrun_modes[mode][1]);
	FUNC4(MSR_TMx86_LONGRUN, msrinfo.msr);

	/* Write LongRun mode flags to Model Specific Register. */
	msrinfo.msr = FUNC3(MSR_TMx86_LONGRUN_FLAGS);
	msrinfo.regs[0] = (msrinfo.regs[0] & ~0x01) | longrun_modes[mode][2];
	FUNC4(MSR_TMx86_LONGRUN_FLAGS, msrinfo.msr);

	FUNC2(saveintr);
	return (1);
}