#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_15__ ;
typedef  struct TYPE_21__   TYPE_14__ ;
typedef  struct TYPE_20__   TYPE_13__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u16 ;
struct TYPE_24__ {void* tci; int /*<<< orphan*/  tpid; } ;
struct TYPE_28__ {int enable_stag_pri_change; int pri_map_valid; size_t* inner_to_outer_pri_map; TYPE_2__ outer_tag; } ;
struct TYPE_21__ {int /*<<< orphan*/ * minor_ver_arr; int /*<<< orphan*/ * major_ver_arr; } ;
struct pf_start_ramrod_data {size_t event_ring_sb_index; size_t event_ring_num_pages; int allow_npar_tx_switching; size_t base_vf_id; size_t num_vfs; TYPE_6__ outer_tag_config; TYPE_14__ hsi_fp_ver; void* personality; int /*<<< orphan*/  tunnel_config; int /*<<< orphan*/  consolid_q_pbl_addr; int /*<<< orphan*/  event_ring_pbl_addr; int /*<<< orphan*/  mf_mode; void* log_type_mask; scalar_t__ dont_log_ramrods; int /*<<< orphan*/  path_id; void* event_ring_sb_id; } ;
struct ecore_tunnel_info {int dummy; } ;
struct TYPE_23__ {struct pf_start_ramrod_data pf_start; } ;
struct ecore_spq_entry {TYPE_1__ ramrod; } ;
struct ecore_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  cid; } ;
struct ecore_ptt {int dummy; } ;
struct TYPE_19__ {int ovlan; int personality; int /*<<< orphan*/  opaque_fid; } ;
struct TYPE_25__ {scalar_t__ pri_type; } ;
struct ecore_hwfn {TYPE_13__* p_dev; TYPE_12__ hw_info; TYPE_11__* p_consq; TYPE_8__* p_eq; TYPE_5__* p_dcbx_info; TYPE_3__ ufp_info; } ;
struct ecore_hw_sriov_info {scalar_t__ total_vfs; scalar_t__ first_vf_in_pf; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_31__ {int /*<<< orphan*/  p_phys_table; } ;
struct TYPE_29__ {int /*<<< orphan*/  p_phys_table; } ;
struct TYPE_22__ {TYPE_7__ pbl_sp; } ;
struct TYPE_30__ {size_t eq_sb_index; TYPE_15__ chain; } ;
struct TYPE_26__ {scalar_t__ dcbx_enabled; } ;
struct TYPE_27__ {TYPE_4__ results; } ;
struct TYPE_20__ {int /*<<< orphan*/  tunnel; struct ecore_hw_sriov_info* p_iov_info; int /*<<< orphan*/  mf_bits; } ;
struct TYPE_17__ {TYPE_9__ pbl_sp; } ;
struct TYPE_18__ {TYPE_10__ chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_RAMROD_PF_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int,size_t,int /*<<< orphan*/ ,void*) ; 
 size_t ECORE_MAX_PFC_PRIORITIES ; 
 int /*<<< orphan*/  ECORE_MF_8021AD_TAGGING ; 
 int /*<<< orphan*/  ECORE_MF_8021Q_TAGGING ; 
 int /*<<< orphan*/  ECORE_MF_INTER_PF_SWITCH ; 
 int /*<<< orphan*/  ECORE_MF_OVLAN_CLSS ; 
 int /*<<< orphan*/  ECORE_MF_UFP_SPECIFIC ; 
 int /*<<< orphan*/  ECORE_MSG_SPQ ; 
 int ECORE_NOTIMPL ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*) ; 
#define  ECORE_PCI_ETH 133 
#define  ECORE_PCI_ETH_IWARP 132 
#define  ECORE_PCI_ETH_RDMA 131 
#define  ECORE_PCI_ETH_ROCE 130 
#define  ECORE_PCI_FCOE 129 
#define  ECORE_PCI_ISCSI 128 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 scalar_t__ ECORE_UFP_PRI_OS ; 
 int /*<<< orphan*/  ETH_HSI_VER_MAJOR ; 
 int /*<<< orphan*/  ETH_HSI_VER_MINOR ; 
 int /*<<< orphan*/  ETH_P_8021AD ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 size_t ETH_VER_KEY ; 
 int /*<<< orphan*/  MF_NPAR ; 
 int /*<<< orphan*/  MF_OVLAN ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 void* OSAL_NULL ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* PERSONALITY_ETH ; 
 void* PERSONALITY_FCOE ; 
 void* PERSONALITY_ISCSI ; 
 void* PERSONALITY_RDMA_AND_ETH ; 
 int /*<<< orphan*/  PROTOCOLID_COMMON ; 
 scalar_t__ FUNC7 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC11 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct ecore_hwfn*) ; 
 int FUNC14 (struct ecore_hwfn*,struct ecore_spq_entry*,void*) ; 
 int /*<<< orphan*/  FUNC15 (struct ecore_hwfn*,struct ecore_tunnel_info*,int /*<<< orphan*/ *) ; 

enum _ecore_status_t FUNC16(struct ecore_hwfn *p_hwfn,
				       struct ecore_ptt *p_ptt,
				       struct ecore_tunnel_info *p_tunn,
				       bool allow_npar_tx_switch)
{
	struct pf_start_ramrod_data *p_ramrod = OSAL_NULL;
	u16 sb = FUNC10(p_hwfn);
	u8 sb_index = p_hwfn->p_eq->eq_sb_index;
	struct ecore_spq_entry *p_ent = OSAL_NULL;
	struct ecore_sp_init_data init_data;
	enum _ecore_status_t rc = ECORE_NOTIMPL;
	u8 page_cnt;
	u8 i;

	/* update initial eq producer */
	FUNC9(p_hwfn,
			     FUNC8(&p_hwfn->p_eq->chain));

	/* Initialize the SPQ entry for the ramrod */
	FUNC5(&init_data, 0, sizeof(init_data));
	init_data.cid = FUNC13(p_hwfn);
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

	rc = FUNC12(p_hwfn, &p_ent,
				   COMMON_RAMROD_PF_START,
				   PROTOCOLID_COMMON,
				   &init_data);
	if (rc != ECORE_SUCCESS)
		return rc;

	/* Fill the ramrod data */
	p_ramrod = &p_ent->ramrod.pf_start;
	p_ramrod->event_ring_sb_id = FUNC4(sb);
	p_ramrod->event_ring_sb_index = sb_index;
	p_ramrod->path_id = FUNC3(p_hwfn);

	/* For easier debugging */
	p_ramrod->dont_log_ramrods = 0;
	p_ramrod->log_type_mask = FUNC4(0x8f);

	if (FUNC6(ECORE_MF_OVLAN_CLSS, &p_hwfn->p_dev->mf_bits))
		p_ramrod->mf_mode = MF_OVLAN;
	else
		p_ramrod->mf_mode = MF_NPAR;

	p_ramrod->outer_tag_config.outer_tag.tci =
		FUNC4(p_hwfn->hw_info.ovlan);
	if (FUNC6(ECORE_MF_8021Q_TAGGING, &p_hwfn->p_dev->mf_bits))
		p_ramrod->outer_tag_config.outer_tag.tpid = ETH_P_8021Q;
	else if (FUNC6(ECORE_MF_8021AD_TAGGING,
		 &p_hwfn->p_dev->mf_bits)) {
		p_ramrod->outer_tag_config.outer_tag.tpid = ETH_P_8021AD;
		p_ramrod->outer_tag_config.enable_stag_pri_change = 1;
	}

	p_ramrod->outer_tag_config.pri_map_valid = 1;
	for (i = 0; i < ECORE_MAX_PFC_PRIORITIES; i++)
		p_ramrod->outer_tag_config.inner_to_outer_pri_map[i] = i;

	/* enable_stag_pri_change should be set if port is in BD mode or,
	 * UFP with Host Control mode or, UFP with DCB over base interface.
	 */
	if (FUNC6(ECORE_MF_UFP_SPECIFIC, &p_hwfn->p_dev->mf_bits)) {
		if ((p_hwfn->ufp_info.pri_type == ECORE_UFP_PRI_OS) ||
		    (p_hwfn->p_dcbx_info->results.dcbx_enabled))
			p_ramrod->outer_tag_config.enable_stag_pri_change = 1;
		else
			p_ramrod->outer_tag_config.enable_stag_pri_change = 0;
	}

	/* Place EQ address in RAMROD */
	FUNC0(p_ramrod->event_ring_pbl_addr,
		       p_hwfn->p_eq->chain.pbl_sp.p_phys_table);
	page_cnt = (u8)FUNC7(&p_hwfn->p_eq->chain);
	p_ramrod->event_ring_num_pages = page_cnt;
	FUNC0(p_ramrod->consolid_q_pbl_addr,
		       p_hwfn->p_consq->chain.pbl_sp.p_phys_table);

	FUNC15(p_hwfn, p_tunn,
				       &p_ramrod->tunnel_config);

	if (FUNC6(ECORE_MF_INTER_PF_SWITCH,
			  &p_hwfn->p_dev->mf_bits))
		p_ramrod->allow_npar_tx_switching = allow_npar_tx_switch;

	switch (p_hwfn->hw_info.personality) {
	case ECORE_PCI_ETH:
		p_ramrod->personality = PERSONALITY_ETH;
		break;
	case ECORE_PCI_FCOE:
		p_ramrod->personality = PERSONALITY_FCOE;
		break;
	case ECORE_PCI_ISCSI:
		p_ramrod->personality = PERSONALITY_ISCSI;
		break;
	case ECORE_PCI_ETH_IWARP:
	case ECORE_PCI_ETH_ROCE:
	case ECORE_PCI_ETH_RDMA:
		p_ramrod->personality = PERSONALITY_RDMA_AND_ETH;
		break;
	default:
		FUNC1(p_hwfn, true, "Unknown personality %d\n",
			  p_hwfn->hw_info.personality);
		p_ramrod->personality = PERSONALITY_ETH;
	}

	if (p_hwfn->p_dev->p_iov_info) {
		struct ecore_hw_sriov_info *p_iov = p_hwfn->p_dev->p_iov_info;

		p_ramrod->base_vf_id = (u8)p_iov->first_vf_in_pf;
		p_ramrod->num_vfs = (u8)p_iov->total_vfs;
	}
	/* @@@TBD - update also the "ROCE_VER_KEY" entries when the FW RoCE HSI
	 * version is available.
	 */
	p_ramrod->hsi_fp_ver.major_ver_arr[ETH_VER_KEY] = ETH_HSI_VER_MAJOR;
	p_ramrod->hsi_fp_ver.minor_ver_arr[ETH_VER_KEY] = ETH_HSI_VER_MINOR;

	FUNC2(p_hwfn, ECORE_MSG_SPQ,
		   "Setting event_ring_sb [id %04x index %02x], outer_tag.tpid [%d], outer_tag.tci [%d]\n",
		   sb, sb_index, p_ramrod->outer_tag_config.outer_tag.tpid,
		   p_ramrod->outer_tag_config.outer_tag.tci);

	rc = FUNC14(p_hwfn, p_ent, OSAL_NULL);

	if (p_tunn)
		FUNC11(p_hwfn, p_ptt,
					    &p_hwfn->p_dev->tunnel);

	return rc;
}