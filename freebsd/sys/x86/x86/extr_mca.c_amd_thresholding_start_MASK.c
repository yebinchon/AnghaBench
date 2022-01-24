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
struct amd_et_state {scalar_t__ cur_threshold; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* misc ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MC_MISC_AMD_CNTEN ; 
 int MC_MISC_AMD_CNT_MASK ; 
 scalar_t__ MC_MISC_AMD_CNT_MAX ; 
 int MC_MISC_AMD_CNT_SHIFT ; 
 int MC_MISC_AMD_INT_LVT ; 
 int MC_MISC_AMD_INT_MASK ; 
 int MC_MISC_AMD_LVT_MASK ; 
 int MC_MISC_AMD_LVT_SHIFT ; 
 int MC_MISC_AMD_OVERFLOW ; 
 scalar_t__ amd_elvt ; 
 TYPE_1__ mca_msr_ops ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct amd_et_state *cc, int bank)
{
	uint64_t misc;

	FUNC0(amd_elvt >= 0, ("ELVT offset is not set"));

	misc = FUNC1(mca_msr_ops.misc(bank));

	misc &= ~MC_MISC_AMD_INT_MASK;
	misc |= MC_MISC_AMD_INT_LVT;

	misc &= ~MC_MISC_AMD_LVT_MASK;
	misc |= (uint64_t)amd_elvt << MC_MISC_AMD_LVT_SHIFT;

	misc &= ~MC_MISC_AMD_CNT_MASK;
	misc |= (uint64_t)(MC_MISC_AMD_CNT_MAX - cc->cur_threshold)
	    << MC_MISC_AMD_CNT_SHIFT;

	misc &= ~MC_MISC_AMD_OVERFLOW;
	misc |= MC_MISC_AMD_CNTEN;

	FUNC4(mca_msr_ops.misc(bank), misc);
}