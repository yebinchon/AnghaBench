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
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int NPMC ; 
 int PMCF_EN ; 
 int* ctl_shadow ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * msr_pmc ; 
 int perfmon_inuse ; 
 int* pmc_shadow ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4(int pmc)
{
	register_t	saveintr;

	if (pmc < 0 || pmc >= NPMC)
		return EINVAL;

	if (perfmon_inuse & (1 << pmc)) {
		saveintr = FUNC0();
		pmc_shadow[pmc] = FUNC2(msr_pmc[pmc]) & 0xffffffffffULL;
		ctl_shadow[pmc] &= ~(PMCF_EN << 16);
		FUNC3(pmc);
		FUNC1(saveintr);
		return 0;
	}
	return EBUSY;
}