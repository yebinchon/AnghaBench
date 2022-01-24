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
struct ecore_hwfn {int rel_pf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  PXP_CONCRETE_FID_PFID ; 
 int /*<<< orphan*/  PXP_CONCRETE_FID_VFID ; 
 int /*<<< orphan*/  PXP_CONCRETE_FID_VFVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

u32 FUNC1(struct ecore_hwfn *p_hwfn, u8 vfid)
{
	u32 concrete_fid = 0;

	FUNC0(concrete_fid, PXP_CONCRETE_FID_PFID, p_hwfn->rel_pf_id);
	FUNC0(concrete_fid, PXP_CONCRETE_FID_VFID, vfid);
	FUNC0(concrete_fid, PXP_CONCRETE_FID_VFVALID, 1);

	return concrete_fid;
}