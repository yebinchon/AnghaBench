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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int rel_pf_id; } ;

/* Variables and functions */
 int FUNC0 (struct ecore_hwfn*,int) ; 
 int PXP_PRETEND_CONCRETE_FID_PFID_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 

u32 FUNC3(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
		   u8 abs_ppfid, u32 hw_addr)
{
	u8 pfid = FUNC0(p_hwfn, abs_ppfid);
	u32 val;

	FUNC1(p_hwfn, p_ptt,
			  pfid << PXP_PRETEND_CONCRETE_FID_PFID_SHIFT);
	val = FUNC2(p_hwfn, p_ptt, hw_addr);
	FUNC1(p_hwfn, p_ptt,
			  p_hwfn->rel_pf_id <<
			  PXP_PRETEND_CONCRETE_FID_PFID_SHIFT);

	return val;
}