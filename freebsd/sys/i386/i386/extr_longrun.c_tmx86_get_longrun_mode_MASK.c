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
union msrinfo {int msr; int /*<<< orphan*/ * regs; } ;
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t LONGRUN_MODE_MAX ; 
 size_t LONGRUN_MODE_UNKNOWN ; 
 int /*<<< orphan*/  MSR_TMx86_LONGRUN ; 
 int /*<<< orphan*/  MSR_TMx86_LONGRUN_FLAGS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t** longrun_modes ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC4(void)
{
	register_t	saveintr;
	union msrinfo	msrinfo;
	u_int		low, high, flags, mode;

	saveintr = FUNC1();

	msrinfo.msr = FUNC3(MSR_TMx86_LONGRUN);
	low = FUNC0(msrinfo.regs[0]);
	high = FUNC0(msrinfo.regs[1]);
	flags = FUNC3(MSR_TMx86_LONGRUN_FLAGS) & 0x01;

	for (mode = 0; mode < LONGRUN_MODE_MAX; mode++) {
		if (low   == longrun_modes[mode][0] &&
		    high  == longrun_modes[mode][1] &&
		    flags == longrun_modes[mode][2]) {
			goto out;
		}
	}
	mode = LONGRUN_MODE_UNKNOWN;
out:
	FUNC2(saveintr);
	return (mode);
}