#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct amd_et_state {int cur_threshold; int /*<<< orphan*/  last_intr; } ;
typedef  enum scan_mode { ____Placeholder_scan_mode } scan_mode ;
struct TYPE_2__ {int /*<<< orphan*/  (* misc ) (int) ;} ;

/* Variables and functions */
 int CMCI ; 
 int MC_MISC_AMD_CNT_MASK ; 
 int MC_MISC_AMD_CNT_MAX ; 
 int MC_MISC_AMD_CNT_SHIFT ; 
 int MC_MISC_AMD_OVERFLOW ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct amd_et_state** amd_et_state ; 
 int /*<<< orphan*/  cpuid ; 
 TYPE_1__ mca_msr_ops ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  time_uptime ; 
 int FUNC4 (int,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(enum scan_mode mode, int bank, int valid)
{
	struct amd_et_state *cc;
	uint64_t misc;
	int new_threshold;
	int count;

	cc = &amd_et_state[FUNC0(cpuid)][bank];
	misc = FUNC1(mca_msr_ops.misc(bank));
	count = (misc & MC_MISC_AMD_CNT_MASK) >> MC_MISC_AMD_CNT_SHIFT;
	count = count - (MC_MISC_AMD_CNT_MAX - cc->cur_threshold);

	new_threshold = FUNC4(mode, valid, cc->last_intr, count,
	    cc->cur_threshold, MC_MISC_AMD_CNT_MAX);

	cc->cur_threshold = new_threshold;
	misc &= ~MC_MISC_AMD_CNT_MASK;
	misc |= (uint64_t)(MC_MISC_AMD_CNT_MAX - cc->cur_threshold)
	    << MC_MISC_AMD_CNT_SHIFT;
	misc &= ~MC_MISC_AMD_OVERFLOW;
	FUNC5(mca_msr_ops.misc(bank), misc);
	if (mode == CMCI && valid)
		cc->last_intr = time_uptime;
}