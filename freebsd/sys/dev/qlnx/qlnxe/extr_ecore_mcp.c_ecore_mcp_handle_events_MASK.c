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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_mcp_info {size_t mfw_mb_length; scalar_t__* mfw_mb_cur; scalar_t__* mfw_mb_shadow; scalar_t__ mfw_mb_addr; } ;
struct ecore_hwfn {TYPE_1__* p_dcbx_info; struct ecore_mcp_info* mcp_info; } ;
struct ecore_dcbx_set {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  set; } ;
typedef  int /*<<< orphan*/  OSAL_BE32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ECORE_DCBX_OPERATIONAL_MIB ; 
 int /*<<< orphan*/  ECORE_DCBX_REMOTE_LLDP_MIB ; 
 int /*<<< orphan*/  ECORE_DCBX_REMOTE_MIB ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_LINK ; 
 int /*<<< orphan*/  ECORE_MSG_SP ; 
 int ECORE_SUCCESS ; 
#define  MFW_DRV_MSG_BW_UPDATE 145 
#define  MFW_DRV_MSG_CRITICAL_ERROR_OCCURRED 144 
#define  MFW_DRV_MSG_DCBX_OPERATIONAL_MIB_UPDATED 143 
#define  MFW_DRV_MSG_DCBX_REMOTE_MIB_UPDATED 142 
#define  MFW_DRV_MSG_ERROR_RECOVERY 141 
#define  MFW_DRV_MSG_FAILURE_DETECTED 140 
#define  MFW_DRV_MSG_GET_FCOE_STATS 139 
#define  MFW_DRV_MSG_GET_ISCSI_STATS 138 
#define  MFW_DRV_MSG_GET_LAN_STATS 137 
#define  MFW_DRV_MSG_GET_RDMA_STATS 136 
#define  MFW_DRV_MSG_GET_TLV_REQ 135 
#define  MFW_DRV_MSG_LINK_CHANGE 134 
#define  MFW_DRV_MSG_LLDP_DATA_UPDATED 133 
#define  MFW_DRV_MSG_LLDP_RECEIVED_TLVS_UPDATED 132 
 int FUNC2 (size_t) ; 
#define  MFW_DRV_MSG_OEM_CFG_UPDATE 131 
#define  MFW_DRV_MSG_S_TAG_UPDATE 130 
#define  MFW_DRV_MSG_TRANSCEIVER_STATE_CHANGE 129 
#define  MFW_DRV_MSG_VF_DISABLED 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC10 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC11 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC13 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC14 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC15 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC16 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC17 (struct ecore_hwfn*,struct ecore_ptt*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC19 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC20 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC21(struct ecore_hwfn *p_hwfn,
					     struct ecore_ptt *p_ptt)
{
	struct ecore_mcp_info *info = p_hwfn->mcp_info;
	enum _ecore_status_t rc = ECORE_SUCCESS;
	bool found = false;
	u16 i;

	FUNC1(p_hwfn, ECORE_MSG_SP, "Received message from MFW\n");

	/* Read Messages from MFW */
	FUNC16(p_hwfn, p_ptt);

	/* Compare current messages to old ones */
	for (i = 0; i < info->mfw_mb_length; i++) {
		if (info->mfw_mb_cur[i] == info->mfw_mb_shadow[i])
			continue;

		found = true;

		FUNC1(p_hwfn, ECORE_MSG_LINK,
			   "Msg [%d] - old CMD 0x%02x, new CMD 0x%02x\n",
			   i, info->mfw_mb_shadow[i], info->mfw_mb_cur[i]);

		switch (i) {
		case MFW_DRV_MSG_LINK_CHANGE:
			FUNC11(p_hwfn, p_ptt, false);
			break;
		case MFW_DRV_MSG_VF_DISABLED:
			FUNC15(p_hwfn, p_ptt);
			break;
		case MFW_DRV_MSG_LLDP_DATA_UPDATED:
			FUNC7(p_hwfn, p_ptt,
						    ECORE_DCBX_REMOTE_LLDP_MIB);
			break;
		case MFW_DRV_MSG_DCBX_REMOTE_MIB_UPDATED:
			FUNC7(p_hwfn, p_ptt,
						    ECORE_DCBX_REMOTE_MIB);
			break;
		case MFW_DRV_MSG_DCBX_OPERATIONAL_MIB_UPDATED:
			FUNC7(p_hwfn, p_ptt,
						    ECORE_DCBX_OPERATIONAL_MIB);
			/* clear the user-config cache */
			FUNC5(&p_hwfn->p_dcbx_info->set, 0,
				    sizeof(struct ecore_dcbx_set));
			break;
		case MFW_DRV_MSG_LLDP_RECEIVED_TLVS_UPDATED:
			FUNC8(p_hwfn, p_ptt);
			break;
		case MFW_DRV_MSG_OEM_CFG_UPDATE:
			FUNC14(p_hwfn, p_ptt);
			break;
		case MFW_DRV_MSG_TRANSCEIVER_STATE_CHANGE:
			FUNC13(p_hwfn, p_ptt);
			break;
		case MFW_DRV_MSG_ERROR_RECOVERY:
			FUNC12(p_hwfn, p_ptt);
			break;
		case MFW_DRV_MSG_GET_LAN_STATS:
		case MFW_DRV_MSG_GET_FCOE_STATS:
		case MFW_DRV_MSG_GET_ISCSI_STATS:
		case MFW_DRV_MSG_GET_RDMA_STATS:
			FUNC17(p_hwfn, p_ptt, i);
			break;
		case MFW_DRV_MSG_BW_UPDATE:
			FUNC18(p_hwfn, p_ptt);
			break;
		case MFW_DRV_MSG_S_TAG_UPDATE:
			FUNC19(p_hwfn, p_ptt);
			break;
		case MFW_DRV_MSG_FAILURE_DETECTED:
			FUNC10(p_hwfn);
			break;
		case MFW_DRV_MSG_CRITICAL_ERROR_OCCURRED:
			FUNC9(p_hwfn, p_ptt);
			break;
		case MFW_DRV_MSG_GET_TLV_REQ:
			FUNC6(p_hwfn);
			break;
		default:
			FUNC0(p_hwfn, "Unimplemented MFW message %d\n", i);
			rc = ECORE_INVAL;
		}
	}

	/* ACK everything */
	for (i = 0; i < FUNC2(info->mfw_mb_length); i++) {
		OSAL_BE32 val = FUNC3(((u32 *)info->mfw_mb_cur)[i]);

		/* MFW expect answer in BE, so we force write in that format */
		FUNC20(p_hwfn, p_ptt,
			 info->mfw_mb_addr + sizeof(u32) +
			 FUNC2(info->mfw_mb_length) *
			 sizeof(u32) + i * sizeof(u32), val);
	}

	if (!found) {
		FUNC0(p_hwfn,
			"Received an MFW message indication but no new message!\n");
		rc = ECORE_INVAL;
	}

	/* Copy the new mfw messages into the shadow */
	FUNC4(info->mfw_mb_shadow, info->mfw_mb_cur, info->mfw_mb_length);

	return rc;
}