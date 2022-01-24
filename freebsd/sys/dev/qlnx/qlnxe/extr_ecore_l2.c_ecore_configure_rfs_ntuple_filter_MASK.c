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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct rx_update_gft_filter_data {int rx_qid_valid; int /*<<< orphan*/  filter_action; void* vport_id; scalar_t__ flow_id; scalar_t__ flow_id_valid; void* rx_qid; void* pkt_hdr_length; int /*<<< orphan*/  pkt_hdr_addr; } ;
struct TYPE_4__ {struct rx_update_gft_filter_data rx_update_gft; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_spq_comp_cb {int dummy; } ;
struct ecore_sp_init_data {int /*<<< orphan*/  comp_mode; struct ecore_spq_comp_cb* p_comp_data; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  cid; } ;
struct ecore_ntuple_filter_params {scalar_t__ qid; int /*<<< orphan*/  length; scalar_t__ addr; scalar_t__ b_is_add; int /*<<< orphan*/  vport_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECORE_MSG_SP ; 
 int ECORE_NOTIMPL ; 
 scalar_t__ ECORE_RFS_NTUPLE_QID_RSS ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_CB ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  ETH_RAMROD_GFT_UPDATE_FILTER ; 
 int /*<<< orphan*/  GFT_ADD_FILTER ; 
 int /*<<< orphan*/  GFT_DELETE_FILTER ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 void* OSAL_NULL ; 
 int /*<<< orphan*/  PROTOCOLID_ETH ; 
 int FUNC4 (struct ecore_hwfn*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ecore_hwfn*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*) ; 
 int FUNC8 (struct ecore_hwfn*,struct ecore_spq_entry*,void*) ; 

enum _ecore_status_t
FUNC9(struct ecore_hwfn *p_hwfn,
				  struct ecore_spq_comp_cb *p_cb,
				  struct ecore_ntuple_filter_params *p_params)
{
	struct rx_update_gft_filter_data *p_ramrod = OSAL_NULL;
	struct ecore_spq_entry *p_ent = OSAL_NULL;
	struct ecore_sp_init_data init_data;
	u16 abs_rx_q_id = 0;
	u8 abs_vport_id = 0;
	enum _ecore_status_t rc = ECORE_NOTIMPL;

	rc = FUNC5(p_hwfn, p_params->vport_id, &abs_vport_id);
	if (rc != ECORE_SUCCESS)
		return rc;

	if (p_params->qid != ECORE_RFS_NTUPLE_QID_RSS) {
		rc = FUNC4(p_hwfn, p_params->qid, &abs_rx_q_id);
		if (rc != ECORE_SUCCESS)
			return rc;
	}

	/* Get SPQ entry */
	FUNC3(&init_data, 0, sizeof(init_data));
	init_data.cid = FUNC7(p_hwfn);

	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;

	if (p_cb) {
		init_data.comp_mode = ECORE_SPQ_MODE_CB;
		init_data.p_comp_data = p_cb;
	} else {
		init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;
	}

	rc = FUNC6(p_hwfn, &p_ent,
				   ETH_RAMROD_GFT_UPDATE_FILTER,
				   PROTOCOLID_ETH, &init_data);
	if (rc != ECORE_SUCCESS)
		return rc;

	p_ramrod = &p_ent->ramrod.rx_update_gft;

	FUNC0(p_ramrod->pkt_hdr_addr, p_params->addr);
	p_ramrod->pkt_hdr_length = FUNC2(p_params->length);

	if (p_params->qid != ECORE_RFS_NTUPLE_QID_RSS) {
		p_ramrod->rx_qid_valid = 1;
		p_ramrod->rx_qid = FUNC2(abs_rx_q_id);
	}

	p_ramrod->flow_id_valid = 0;
	p_ramrod->flow_id = 0;

	p_ramrod->vport_id = FUNC2 ((u16)abs_vport_id);
	p_ramrod->filter_action = p_params->b_is_add ? GFT_ADD_FILTER
						     : GFT_DELETE_FILTER;

	FUNC1(p_hwfn, ECORE_MSG_SP,
		   "V[%0x], Q[%04x] - %s filter from 0x%llx [length %04xb]\n",
		   abs_vport_id, abs_rx_q_id,
		   p_params->b_is_add ? "Adding" : "Removing",
		   (unsigned long long)p_params->addr, p_params->length);

	return FUNC8(p_hwfn, p_ent, OSAL_NULL);
}