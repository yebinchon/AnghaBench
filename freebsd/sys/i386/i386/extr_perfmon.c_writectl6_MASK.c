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
 int PMCF_EN ; 
 int* ctl_shadow ; 
 int /*<<< orphan*/ * msr_ctl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

int
FUNC1(int pmc)
{
	if (pmc > 0 && !(ctl_shadow[pmc] & (PMCF_EN << 16))) {
		FUNC0(msr_ctl[pmc], 0);
	} else {
		FUNC0(msr_ctl[pmc], ctl_shadow[pmc]);
	}
	return 0;
}