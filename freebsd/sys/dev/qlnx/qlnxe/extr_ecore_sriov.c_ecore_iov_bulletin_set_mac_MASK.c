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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {TYPE_1__* p_virt; } ;
struct ecore_vf_info {TYPE_2__ bulletin; scalar_t__ b_malicious; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {int valid_bitmap; int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_IOV ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int MAC_ADDR_FORCED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int VFPF_BULLETIN_MAC_ADDR ; 
 struct ecore_vf_info* FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,int) ; 

enum _ecore_status_t FUNC4(struct ecore_hwfn *p_hwfn,
						u8 *mac, int vfid)
{
	struct ecore_vf_info *vf_info;
	u64 feature;

	vf_info = FUNC3(p_hwfn, (u16)vfid, true);
	if (!vf_info) {
		FUNC0(p_hwfn->p_dev, true, "Can not set MAC, invalid vfid [%d]\n",
			  vfid);
		return ECORE_INVAL;
	}
	if (vf_info->b_malicious) {
		FUNC0(p_hwfn->p_dev, false, "Can't set MAC to malicious VF [%d]\n",
			  vfid);
		return ECORE_INVAL;
	}

	if (vf_info->bulletin.p_virt->valid_bitmap & (1 << MAC_ADDR_FORCED)) {
		FUNC1(p_hwfn, ECORE_MSG_IOV, "Can not set MAC, Forced MAC is configured\n");
		return ECORE_INVAL;
	}

	feature = 1 << VFPF_BULLETIN_MAC_ADDR;
	FUNC2(vf_info->bulletin.p_virt->mac,
		    mac, ETH_ALEN);

	vf_info->bulletin.p_virt->valid_bitmap |= feature;

	return ECORE_SUCCESS;
}