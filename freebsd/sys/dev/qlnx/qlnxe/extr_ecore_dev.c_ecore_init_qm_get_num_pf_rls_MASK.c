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
typedef  scalar_t__ u16 ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ECORE_RL ; 
 int /*<<< orphan*/  ECORE_VPORT ; 
 scalar_t__ FUNC1 (struct ecore_hwfn*) ; 
 scalar_t__ NUM_DEFAULT_RLS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 scalar_t__ ROCE_DCQCN_RP_MAX_QPS ; 
 scalar_t__ FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  u32 ; 

u16 FUNC5(struct ecore_hwfn *p_hwfn)
{
	u16 num_pf_rls, num_vfs = FUNC4(p_hwfn);

	/* num RLs can't exceed resource amount of rls or vports or the dcqcn qps */
	num_pf_rls = (u16)FUNC2(u32, FUNC3(p_hwfn, ECORE_RL),
				     (u16)FUNC2(u32, FUNC3(p_hwfn, ECORE_VPORT),
						     ROCE_DCQCN_RP_MAX_QPS));

	/* make sure after we reserve the default and VF rls we'll have something left */
	if (num_pf_rls < num_vfs + NUM_DEFAULT_RLS) {
		if (FUNC1(p_hwfn))
			FUNC0(p_hwfn, false, "no rate limiters left for PF rate limiting [num_pf_rls %d num_vfs %d]\n", num_pf_rls, num_vfs);
		return 0;
	}

	/* subtract rls necessary for VFs and one default one for the PF */
	num_pf_rls -= num_vfs + NUM_DEFAULT_RLS;

	return num_pf_rls;
}