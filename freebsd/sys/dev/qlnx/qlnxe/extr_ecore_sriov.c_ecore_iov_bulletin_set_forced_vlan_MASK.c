#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u16 ;
struct TYPE_4__ {TYPE_1__* p_virt; } ;
struct ecore_vf_info {TYPE_2__ bulletin; scalar_t__ b_malicious; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
struct TYPE_3__ {int valid_bitmap; scalar_t__ pvid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int VLAN_ADDR_FORCED ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_vf_info*,int) ; 
 struct ecore_vf_info* FUNC2 (struct ecore_hwfn*,scalar_t__,int) ; 

void FUNC3(struct ecore_hwfn *p_hwfn,
					u16 pvid, int vfid)
{
	struct ecore_vf_info *vf_info;
	u64 feature;

	vf_info = FUNC2(p_hwfn, (u16)vfid, true);
	if (!vf_info) {
		FUNC0(p_hwfn->p_dev, true, "Can not set forced MAC, invalid vfid [%d]\n",
			  vfid);
		return;
	}
	if (vf_info->b_malicious) {
		FUNC0(p_hwfn->p_dev, false,
			  "Can't set forced vlan to malicious VF [%d]\n",
			  vfid);
		return;
	}

	feature = 1 << VLAN_ADDR_FORCED;
	vf_info->bulletin.p_virt->pvid = pvid;
	if (pvid)
		vf_info->bulletin.p_virt->valid_bitmap |= feature;
	else
		vf_info->bulletin.p_virt->valid_bitmap &= ~feature;

	FUNC1(p_hwfn, vf_info, feature);
}