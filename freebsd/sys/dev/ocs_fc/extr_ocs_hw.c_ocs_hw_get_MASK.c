#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_32__ {int if_type; } ;
struct TYPE_29__ {int n_io; int n_sgl; int rq_default_buffer_size; int auto_xfer_rdy_xri_cnt; int auto_xfer_rdy_size; int auto_xfer_rdy_t10_enable; int auto_xfer_rdy_p_type; int auto_xfer_rdy_ref_tag_is_lba; int auto_xfer_rdy_app_tag_valid; int auto_xfer_rdy_app_tag_value; int topology; int speed; int dif_seed; int dif_mode; int i_only_aab; int emulate_tgt_wqe_timeout; int rq_selection_policy; int rr_quanta; int /*<<< orphan*/  auto_xfer_rdy_blk_size_chip; } ;
struct TYPE_28__ {int disable_ar_tgt_dif; int /*<<< orphan*/  ignore_send_frame; int /*<<< orphan*/  sglc_misreported; } ;
struct TYPE_30__ {int speed; int topology; } ;
struct TYPE_31__ {int* num_qentries; int dump_size; int linkcfg; int eth_license; int /*<<< orphan*/  os; TYPE_5__ sli; TYPE_2__ config; TYPE_1__ workaround; TYPE_3__ link; } ;
typedef  TYPE_4__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;
typedef  int ocs_hw_property_e ;
typedef  int int32_t ;

/* Variables and functions */
 int FALSE ; 
#define  FC_LINK_SPEED_10G 192 
#define  FC_LINK_SPEED_16G 191 
#define  FC_LINK_SPEED_2G 190 
#define  FC_LINK_SPEED_32G 189 
#define  FC_LINK_SPEED_4G 188 
#define  FC_LINK_SPEED_8G 187 
#define  FC_LINK_SPEED_AUTO_16_8_4 186 
#define  OCS_HW_AUTO_XFER_RDY_APP_TAG_VALID 185 
#define  OCS_HW_AUTO_XFER_RDY_APP_TAG_VALUE 184 
#define  OCS_HW_AUTO_XFER_RDY_BLK_SIZE 183 
#define  OCS_HW_AUTO_XFER_RDY_CAPABLE 182 
#define  OCS_HW_AUTO_XFER_RDY_P_TYPE 181 
#define  OCS_HW_AUTO_XFER_RDY_REF_TAG_IS_LBA 180 
#define  OCS_HW_AUTO_XFER_RDY_SIZE 179 
#define  OCS_HW_AUTO_XFER_RDY_T10_ENABLE 178 
#define  OCS_HW_AUTO_XFER_RDY_XRI_CNT 177 
#define  OCS_HW_CONFIG_TOPOLOGY 176 
#define  OCS_HW_DIF_CAPABLE 175 
#define  OCS_HW_DIF_MODE 174 
#define  OCS_HW_DIF_MULTI_SEPARATE 173 
#define  OCS_HW_DIF_SEED 172 
#define  OCS_HW_DISABLE_AR_TGT_DIF 171 
#define  OCS_HW_DUMP_MAX_SIZE 170 
#define  OCS_HW_DUMP_PRESENT 169 
#define  OCS_HW_DUMP_READY 168 
#define  OCS_HW_EMULATE_I_ONLY_AAB 167 
#define  OCS_HW_EMULATE_TARGET_WQE_TIMEOUT 166 
#define  OCS_HW_ETH_LICENSE 165 
#define  OCS_HW_FW_ERROR 164 
#define  OCS_HW_FW_READY 163 
#define  OCS_HW_FW_TIMED_OUT 162 
#define  OCS_HW_HIGH_LOGIN_MODE 161 
#define  OCS_HW_HW_REV1 160 
#define  OCS_HW_HW_REV2 159 
#define  OCS_HW_HW_REV3 158 
#define  OCS_HW_IF_TYPE 157 
#define  OCS_HW_LINKCFG 156 
#define  OCS_HW_LINK_CONFIG_SPEED 155 
#define  OCS_HW_LINK_MODULE_TYPE 154 
#define  OCS_HW_LINK_SPEED 153 
#define  OCS_HW_MAX_IO 152 
#define  OCS_HW_MAX_NODES 151 
#define  OCS_HW_MAX_RQ_ENTRIES 150 
#define  OCS_HW_MAX_SGE 149 
#define  OCS_HW_MAX_SGL 148 
#define  OCS_HW_MAX_VPORTS 147 
#define  OCS_HW_NUM_CHUTES 146 
#define  OCS_HW_N_IO 145 
#define  OCS_HW_N_SGL 144 
#define  OCS_HW_PREREGISTER_SGL 143 
#define  OCS_HW_RESET_REQUIRED 142 
#define  OCS_HW_RQ_DEFAULT_BUFFER_SIZE 141 
#define  OCS_HW_RQ_SELECTION_POLICY 140 
#define  OCS_HW_RR_QUANTA 139 
 int /*<<< orphan*/  OCS_HW_RTN_ERROR ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
#define  OCS_HW_SEND_FRAME_CAPABLE 138 
#define  OCS_HW_SGL_CHAINING_ALLOWED 137 
#define  OCS_HW_SGL_CHAINING_CAPABLE 136 
#define  OCS_HW_SGL_CHAINING_HOST_ALLOCATED 135 
#define  OCS_HW_SLI_FAMILY 134 
#define  OCS_HW_SLI_REV 133 
#define  OCS_HW_TOPOLOGY 132 
 int OCS_HW_TOPOLOGY_LOOP ; 
 int OCS_HW_TOPOLOGY_NONE ; 
 int OCS_HW_TOPOLOGY_NPORT ; 
#define  OCS_HW_VPD_LEN 131 
 int SLI4_IF_TYPE_BE3_SKH_PF ; 
 int SLI4_IF_TYPE_BE3_SKH_VF ; 
 int SLI4_IF_TYPE_LANCER_FC_ETH ; 
 int SLI4_SGE_MAX_RESERVED ; 
#define  SLI_LINK_TOPO_LOOP 130 
#define  SLI_LINK_TOPO_NONE 129 
#define  SLI_LINK_TOPO_NPORT 128 
 size_t SLI_QTYPE_RQ ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_RPI ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_VPI ; 
 int /*<<< orphan*/  SLI_RSRC_FCOE_XRI ; 
 int TRUE ; 
 int FUNC0 (TYPE_4__*) ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_5__*) ; 
 int FUNC5 (TYPE_5__*) ; 
 int FUNC6 (TYPE_5__*) ; 
 int FUNC7 (TYPE_5__*) ; 
 int FUNC8 (TYPE_5__*) ; 
 int FUNC9 (TYPE_5__*) ; 
 int FUNC10 (TYPE_5__*,int) ; 
 int FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int FUNC13 (TYPE_5__*) ; 
 int FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_5__*) ; 
 int FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 
 int FUNC18 (TYPE_5__*) ; 
 int FUNC19 (TYPE_5__*) ; 
 int FUNC20 (TYPE_5__*) ; 
 int FUNC21 (TYPE_5__*) ; 
 int FUNC22 (TYPE_5__*) ; 

ocs_hw_rtn_e
FUNC23(ocs_hw_t *hw, ocs_hw_property_e prop, uint32_t *value)
{
	ocs_hw_rtn_e		rc = OCS_HW_RTN_SUCCESS;
	int32_t			tmp;

	if (!value) {
		return OCS_HW_RTN_ERROR;
	}

	*value = 0;

	switch (prop) {
	case OCS_HW_N_IO:
		*value = hw->config.n_io;
		break;
	case OCS_HW_N_SGL:
		*value = (hw->config.n_sgl - SLI4_SGE_MAX_RESERVED);
		break;
	case OCS_HW_MAX_IO:
		*value = FUNC14(&hw->sli, SLI_RSRC_FCOE_XRI);
		break;
	case OCS_HW_MAX_NODES:
		*value = FUNC14(&hw->sli, SLI_RSRC_FCOE_RPI);
		break;
	case OCS_HW_MAX_RQ_ENTRIES:
		*value = hw->num_qentries[SLI_QTYPE_RQ];
		break;
	case OCS_HW_RQ_DEFAULT_BUFFER_SIZE:
		*value = hw->config.rq_default_buffer_size;
		break;
	case OCS_HW_AUTO_XFER_RDY_CAPABLE:
		*value = FUNC7(&hw->sli);
		break;
	case OCS_HW_AUTO_XFER_RDY_XRI_CNT:
		*value = hw->config.auto_xfer_rdy_xri_cnt;
		break;
	case OCS_HW_AUTO_XFER_RDY_SIZE:
		*value = hw->config.auto_xfer_rdy_size;
		break;
	case OCS_HW_AUTO_XFER_RDY_BLK_SIZE:
		switch (hw->config.auto_xfer_rdy_blk_size_chip) {
		case 0:
			*value = 512;
			break;
		case 1:
			*value = 1024;
			break;
		case 2:
			*value = 2048;
			break;
		case 3:
			*value = 4096;
			break;
		case 4:
			*value = 520;
			break;
		default:
			*value = 0;
			rc = OCS_HW_RTN_ERROR;
			break;
		}
		break;
	case OCS_HW_AUTO_XFER_RDY_T10_ENABLE:
		*value = hw->config.auto_xfer_rdy_t10_enable;
		break;
	case OCS_HW_AUTO_XFER_RDY_P_TYPE:
		*value = hw->config.auto_xfer_rdy_p_type;
		break;
	case OCS_HW_AUTO_XFER_RDY_REF_TAG_IS_LBA:
		*value = hw->config.auto_xfer_rdy_ref_tag_is_lba;
		break;
	case OCS_HW_AUTO_XFER_RDY_APP_TAG_VALID:
		*value = hw->config.auto_xfer_rdy_app_tag_valid;
		break;
	case OCS_HW_AUTO_XFER_RDY_APP_TAG_VALUE:
		*value = hw->config.auto_xfer_rdy_app_tag_value;
		break;
	case OCS_HW_MAX_SGE:
		*value = FUNC15(&hw->sli);
		break;
	case OCS_HW_MAX_SGL:
		*value = FUNC16(&hw->sli);
		break;
	case OCS_HW_TOPOLOGY:
		/*
		 * Infer link.status based on link.speed.
		 * Report OCS_HW_TOPOLOGY_NONE if the link is down.
		 */
		if (hw->link.speed == 0) {
			*value = OCS_HW_TOPOLOGY_NONE;
			break;
		}
		switch (hw->link.topology) {
		case SLI_LINK_TOPO_NPORT:
			*value = OCS_HW_TOPOLOGY_NPORT;
			break;
		case SLI_LINK_TOPO_LOOP:
			*value = OCS_HW_TOPOLOGY_LOOP;
			break;
		case SLI_LINK_TOPO_NONE:
			*value = OCS_HW_TOPOLOGY_NONE;
			break;
		default:
			FUNC2(hw->os, "unsupported topology %#x\n", hw->link.topology);
			rc = OCS_HW_RTN_ERROR;
			break;
		}
		break;
	case OCS_HW_CONFIG_TOPOLOGY:
		*value = hw->config.topology;
		break;
	case OCS_HW_LINK_SPEED:
		*value = hw->link.speed;
		break;
	case OCS_HW_LINK_CONFIG_SPEED:
		switch (hw->config.speed) {
		case FC_LINK_SPEED_10G:
			*value = 10000;
			break;
		case FC_LINK_SPEED_AUTO_16_8_4:
			*value = 0;
			break;
		case FC_LINK_SPEED_2G:
			*value = 2000;
			break;
		case FC_LINK_SPEED_4G:
			*value = 4000;
			break;
		case FC_LINK_SPEED_8G:
			*value = 8000;
			break;
		case FC_LINK_SPEED_16G:
			*value = 16000;
			break;
		case FC_LINK_SPEED_32G:
			*value = 32000;
			break;
		default:
			FUNC2(hw->os, "unsupported speed %#x\n", hw->config.speed);
			rc = OCS_HW_RTN_ERROR;
			break;
		}
		break;
	case OCS_HW_IF_TYPE:
		*value = FUNC11(&hw->sli);
		break;
	case OCS_HW_SLI_REV:
		*value = FUNC20(&hw->sli);
		break;
	case OCS_HW_SLI_FAMILY:
		*value = FUNC19(&hw->sli);
		break;
	case OCS_HW_DIF_CAPABLE:
		*value = FUNC8(&hw->sli);
		break;
	case OCS_HW_DIF_SEED:
		*value = hw->config.dif_seed;
		break;
	case OCS_HW_DIF_MODE:
		*value = hw->config.dif_mode;
		break;
	case OCS_HW_DIF_MULTI_SEPARATE:
		/* Lancer supports multiple DIF separates */
		if (hw->sli.if_type == SLI4_IF_TYPE_LANCER_FC_ETH) {
			*value = TRUE;
		} else {
			*value = FALSE;
		}
		break;
	case OCS_HW_DUMP_MAX_SIZE:
		*value = hw->dump_size;
		break;
	case OCS_HW_DUMP_READY:
		*value = FUNC4(&hw->sli);
		break;
	case OCS_HW_DUMP_PRESENT:
		*value = FUNC3(&hw->sli);
		break;
	case OCS_HW_RESET_REQUIRED:
		tmp = FUNC22(&hw->sli);
		if(tmp < 0) {
			rc = OCS_HW_RTN_ERROR;
		} else {
			*value = tmp;
		}
		break;
	case OCS_HW_FW_ERROR:
		*value = FUNC5(&hw->sli);
		break;
	case OCS_HW_FW_READY:
		*value = FUNC6(&hw->sli);
		break;
	case OCS_HW_FW_TIMED_OUT:
		*value = FUNC0(hw);
		break;
	case OCS_HW_HIGH_LOGIN_MODE:
		*value = FUNC9(&hw->sli);
		break;
	case OCS_HW_PREREGISTER_SGL:
		*value = FUNC18(&hw->sli);
		break;
	case OCS_HW_HW_REV1:
		*value = FUNC10(&hw->sli, 0);
		break;
	case OCS_HW_HW_REV2:
		*value = FUNC10(&hw->sli, 1);
		break;
	case OCS_HW_HW_REV3:
		*value = FUNC10(&hw->sli, 2);
		break;
	case OCS_HW_LINKCFG:
		*value = hw->linkcfg;
		break;
	case OCS_HW_ETH_LICENSE:
		*value = hw->eth_license;
		break;
	case OCS_HW_LINK_MODULE_TYPE:
		*value = FUNC13(&hw->sli);
		break;
	case OCS_HW_NUM_CHUTES:
		*value = FUNC1(hw);
		break;
	case OCS_HW_DISABLE_AR_TGT_DIF:
		*value = hw->workaround.disable_ar_tgt_dif;
		break;
	case OCS_HW_EMULATE_I_ONLY_AAB:
		*value = hw->config.i_only_aab;
		break;
	case OCS_HW_EMULATE_TARGET_WQE_TIMEOUT:
		*value = hw->config.emulate_tgt_wqe_timeout;
		break;
	case OCS_HW_VPD_LEN:
		*value = FUNC21(&hw->sli);
		break;
	case OCS_HW_SGL_CHAINING_CAPABLE:
		*value = FUNC12(&hw->sli) || hw->workaround.sglc_misreported;
		break;
	case OCS_HW_SGL_CHAINING_ALLOWED:
		/*
		 * SGL Chaining is allowed in the following cases:
		 *   1. Lancer with host SGL Lists
		 *   2. Skyhawk with pre-registered SGL Lists
		 */
		*value = FALSE;
		if ((FUNC12(&hw->sli) || hw->workaround.sglc_misreported) &&
		    !FUNC17(&hw->sli) &&
		    SLI4_IF_TYPE_LANCER_FC_ETH  == FUNC11(&hw->sli)) {
			*value = TRUE;
		}

		if ((FUNC12(&hw->sli) || hw->workaround.sglc_misreported) &&
		    FUNC17(&hw->sli) &&
		    ((SLI4_IF_TYPE_BE3_SKH_PF == FUNC11(&hw->sli)) ||
			(SLI4_IF_TYPE_BE3_SKH_VF == FUNC11(&hw->sli)))) {
			*value = TRUE;
		}
		break;
	case OCS_HW_SGL_CHAINING_HOST_ALLOCATED:
		/* Only lancer supports host allocated SGL Chaining buffers. */
		*value = ((FUNC12(&hw->sli) || hw->workaround.sglc_misreported) &&
			  (SLI4_IF_TYPE_LANCER_FC_ETH  == FUNC11(&hw->sli)));
		break;
	case OCS_HW_SEND_FRAME_CAPABLE:
		if (hw->workaround.ignore_send_frame) {
			*value = 0;
		} else {
			/* Only lancer is capable */
			*value = FUNC11(&hw->sli) == SLI4_IF_TYPE_LANCER_FC_ETH;
		}
		break;
	case OCS_HW_RQ_SELECTION_POLICY:
		*value = hw->config.rq_selection_policy;
		break;
	case OCS_HW_RR_QUANTA:
		*value = hw->config.rr_quanta;
		break;
	case OCS_HW_MAX_VPORTS:
		*value = FUNC14(&hw->sli, SLI_RSRC_FCOE_VPI);
		break;
	default:
		FUNC2(hw->os, "unsupported property %#x\n", prop);
		rc = OCS_HW_RTN_ERROR;
	}

	return rc;
}