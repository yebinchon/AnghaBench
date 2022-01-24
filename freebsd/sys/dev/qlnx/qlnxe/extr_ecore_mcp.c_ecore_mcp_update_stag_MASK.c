#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct public_func {scalar_t__ ovlan_stag; } ;
struct ecore_ptt {int dummy; } ;
struct TYPE_6__ {int ovlan; int hw_mode; } ;
struct ecore_hwfn {TYPE_3__ hw_info; TYPE_2__* mcp_info; } ;
struct TYPE_4__ {int ovlan; } ;
struct TYPE_5__ {TYPE_1__ func_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DORQ_REG_PF_EXT_VID_BB_K2 ; 
 int /*<<< orphan*/  DORQ_REG_TAG1_OVRD_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_S_TAG_UPDATE_ACK ; 
 int /*<<< orphan*/  ECORE_HW_INFO_CHANGE_OVLAN ; 
 int ECORE_MCP_VLAN_UNSET ; 
 int /*<<< orphan*/  ECORE_MSG_SP ; 
 int FUNC_MF_CFG_OV_STAG_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*) ; 
 int MODE_MF_SD ; 
 int /*<<< orphan*/  NIG_REG_LLH_FUNC_TAG_VALUE ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,struct public_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct ecore_hwfn *p_hwfn,
				  struct ecore_ptt *p_ptt)
{
	struct public_func shmem_info;
	u32 resp = 0, param = 0;

	FUNC4(p_hwfn, p_ptt, &shmem_info,
				 FUNC1(p_hwfn));

	p_hwfn->mcp_info->func_info.ovlan = (u16)shmem_info.ovlan_stag &
						 FUNC_MF_CFG_OV_STAG_MASK;
	p_hwfn->hw_info.ovlan = p_hwfn->mcp_info->func_info.ovlan;
	if ((p_hwfn->hw_info.hw_mode & (1 << MODE_MF_SD)) &&
	    (p_hwfn->hw_info.ovlan != ECORE_MCP_VLAN_UNSET)) {
		FUNC6(p_hwfn, p_ptt,
			 NIG_REG_LLH_FUNC_TAG_VALUE,
			 p_hwfn->hw_info.ovlan);
		FUNC5(p_hwfn);
		/* Configure doorbell to add external vlan to EDPM packets */
		FUNC6(p_hwfn, p_ptt, DORQ_REG_TAG1_OVRD_MODE, 1);
		FUNC6(p_hwfn, p_ptt, DORQ_REG_PF_EXT_VID_BB_K2,
			 p_hwfn->hw_info.ovlan);
	}

	FUNC0(p_hwfn, ECORE_MSG_SP, "ovlan  = %d hw_mode = 0x%x\n",
		   p_hwfn->mcp_info->func_info.ovlan, p_hwfn->hw_info.hw_mode);
	FUNC2(p_hwfn, ECORE_HW_INFO_CHANGE_OVLAN);

	/* Acknowledge the MFW */
	FUNC3(p_hwfn, p_ptt, DRV_MSG_CODE_S_TAG_UPDATE_ACK, 0,
		      &resp, &param);
}