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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int rx; int tx; int cmd_cnt; } ;
struct vport_filter_update_ramrod_data {struct eth_filter_cmd* filter_cmds; TYPE_2__ filter_cmd_hdr; } ;
struct eth_filter_cmd {scalar_t__ type; int action; void* vport_id; int /*<<< orphan*/  vni; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  mac_lsb; int /*<<< orphan*/  mac_mid; int /*<<< orphan*/  mac_msb; } ;
struct TYPE_3__ {struct vport_filter_update_ramrod_data vport_filter_update; } ;
struct ecore_spq_entry {TYPE_1__ ramrod; } ;
struct ecore_spq_comp_cb {int dummy; } ;
struct ecore_sp_init_data {int comp_mode; struct ecore_spq_comp_cb* p_comp_data; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  cid; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
struct ecore_filter_ucast {int opcode; int type; int /*<<< orphan*/  vni; int /*<<< orphan*/  vlan; scalar_t__ mac; scalar_t__ is_tx_filter; scalar_t__ is_rx_filter; int /*<<< orphan*/  vport_to_add_to; int /*<<< orphan*/  vport_to_remove_from; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum spq_mode { ____Placeholder_spq_mode } spq_mode ;
typedef  enum eth_filter_action { ____Placeholder_eth_filter_action } eth_filter_action ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*) ; 
#define  ECORE_FILTER_INNER_MAC 138 
#define  ECORE_FILTER_INNER_MAC_VNI_PAIR 137 
#define  ECORE_FILTER_INNER_PAIR 136 
#define  ECORE_FILTER_INNER_VLAN 135 
#define  ECORE_FILTER_MAC 134 
#define  ECORE_FILTER_MAC_VLAN 133 
#define  ECORE_FILTER_MAC_VNI_PAIR 132 
#define  ECORE_FILTER_MOVE 131 
 int const ECORE_FILTER_REMOVE ; 
#define  ECORE_FILTER_REPLACE 130 
#define  ECORE_FILTER_VLAN 129 
#define  ECORE_FILTER_VNI 128 
 int /*<<< orphan*/  ECORE_MSG_SP ; 
 int ECORE_NOTIMPL ; 
 int ECORE_SUCCESS ; 
 void* ETH_FILTER_ACTION_ADD ; 
 int ETH_FILTER_ACTION_REMOVE ; 
 int ETH_FILTER_ACTION_REMOVE_ALL ; 
 scalar_t__ ETH_FILTER_TYPE_INNER_MAC ; 
 scalar_t__ ETH_FILTER_TYPE_INNER_MAC_VNI_PAIR ; 
 scalar_t__ ETH_FILTER_TYPE_INNER_PAIR ; 
 scalar_t__ ETH_FILTER_TYPE_INNER_VLAN ; 
 scalar_t__ ETH_FILTER_TYPE_MAC ; 
 scalar_t__ ETH_FILTER_TYPE_MAC_VNI_PAIR ; 
 scalar_t__ ETH_FILTER_TYPE_PAIR ; 
 scalar_t__ ETH_FILTER_TYPE_VLAN ; 
 scalar_t__ ETH_FILTER_TYPE_VNI ; 
 int /*<<< orphan*/  ETH_RAMROD_FILTERS_UPDATE ; 
 int MAX_ETH_FILTER_ACTION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct eth_filter_cmd*,struct eth_filter_cmd*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PROTOCOLID_ETH ; 
 int FUNC7 (int const) ; 
 int FUNC8 (struct ecore_hwfn*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC10 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct ecore_hwfn*) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC12(struct ecore_hwfn *p_hwfn,
			  u16 opaque_fid,
			  struct ecore_filter_ucast *p_filter_cmd,
			  struct vport_filter_update_ramrod_data **pp_ramrod,
			  struct ecore_spq_entry **pp_ent,
			  enum spq_mode comp_mode,
			  struct ecore_spq_comp_cb *p_comp_data)
{
	u8 vport_to_add_to = 0, vport_to_remove_from = 0;
	struct vport_filter_update_ramrod_data *p_ramrod;
	struct eth_filter_cmd *p_first_filter;
	struct eth_filter_cmd *p_second_filter;
	struct ecore_sp_init_data init_data;
	enum eth_filter_action action;
	enum _ecore_status_t rc;

	rc = FUNC8(p_hwfn, p_filter_cmd->vport_to_remove_from,
			    &vport_to_remove_from);
	if (rc != ECORE_SUCCESS)
		return rc;

	rc = FUNC8(p_hwfn, p_filter_cmd->vport_to_add_to,
			    &vport_to_add_to);
	if (rc != ECORE_SUCCESS)
		return rc;

	/* Get SPQ entry */
	FUNC6(&init_data, 0, sizeof(init_data));
	init_data.cid = FUNC11(p_hwfn);
	init_data.opaque_fid = opaque_fid;
	init_data.comp_mode = comp_mode;
	init_data.p_comp_data = p_comp_data;

	rc = FUNC10(p_hwfn, pp_ent,
				   ETH_RAMROD_FILTERS_UPDATE,
				   PROTOCOLID_ETH, &init_data);
	if (rc != ECORE_SUCCESS)
		return rc;

	*pp_ramrod = &(*pp_ent)->ramrod.vport_filter_update;
	p_ramrod = *pp_ramrod;
	p_ramrod->filter_cmd_hdr.rx = p_filter_cmd->is_rx_filter ? 1 : 0;
	p_ramrod->filter_cmd_hdr.tx = p_filter_cmd->is_tx_filter ? 1 : 0;

#ifndef ASIC_ONLY
	if (FUNC0(p_hwfn->p_dev)) {
		FUNC2(p_hwfn, ECORE_MSG_SP,
			   "Non-Asic - prevent Tx filters\n");
		p_ramrod->filter_cmd_hdr.tx = 0;
	}

#endif

	switch (p_filter_cmd->opcode) {
	case ECORE_FILTER_REPLACE:
	case ECORE_FILTER_MOVE:
		p_ramrod->filter_cmd_hdr.cmd_cnt = 2; break;
	default:
		p_ramrod->filter_cmd_hdr.cmd_cnt = 1; break;
	}

	p_first_filter = &p_ramrod->filter_cmds[0];
	p_second_filter = &p_ramrod->filter_cmds[1];

	switch (p_filter_cmd->type) {
	case ECORE_FILTER_MAC:
		p_first_filter->type = ETH_FILTER_TYPE_MAC; break;
	case ECORE_FILTER_VLAN:
		p_first_filter->type = ETH_FILTER_TYPE_VLAN; break;
	case ECORE_FILTER_MAC_VLAN:
		p_first_filter->type = ETH_FILTER_TYPE_PAIR; break;
	case ECORE_FILTER_INNER_MAC:
		p_first_filter->type = ETH_FILTER_TYPE_INNER_MAC; break;
	case ECORE_FILTER_INNER_VLAN:
		p_first_filter->type = ETH_FILTER_TYPE_INNER_VLAN; break;
	case ECORE_FILTER_INNER_PAIR:
		p_first_filter->type = ETH_FILTER_TYPE_INNER_PAIR; break;
	case ECORE_FILTER_INNER_MAC_VNI_PAIR:
		p_first_filter->type = ETH_FILTER_TYPE_INNER_MAC_VNI_PAIR;
		break;
	case ECORE_FILTER_MAC_VNI_PAIR:
		p_first_filter->type = ETH_FILTER_TYPE_MAC_VNI_PAIR; break;
	case ECORE_FILTER_VNI:
		p_first_filter->type = ETH_FILTER_TYPE_VNI; break;
	}

	if ((p_first_filter->type == ETH_FILTER_TYPE_MAC) ||
	    (p_first_filter->type == ETH_FILTER_TYPE_PAIR) ||
	    (p_first_filter->type == ETH_FILTER_TYPE_INNER_MAC) ||
	    (p_first_filter->type == ETH_FILTER_TYPE_INNER_PAIR) ||
	    (p_first_filter->type == ETH_FILTER_TYPE_INNER_MAC_VNI_PAIR) ||
	    (p_first_filter->type == ETH_FILTER_TYPE_MAC_VNI_PAIR))
		FUNC9(&p_first_filter->mac_msb,
				      &p_first_filter->mac_mid,
				      &p_first_filter->mac_lsb,
				      (u8 *)p_filter_cmd->mac);

	if ((p_first_filter->type == ETH_FILTER_TYPE_VLAN) ||
	    (p_first_filter->type == ETH_FILTER_TYPE_PAIR) ||
	    (p_first_filter->type == ETH_FILTER_TYPE_INNER_VLAN) ||
	    (p_first_filter->type == ETH_FILTER_TYPE_INNER_PAIR))
		p_first_filter->vlan_id = FUNC3(p_filter_cmd->vlan);

	if ((p_first_filter->type == ETH_FILTER_TYPE_INNER_MAC_VNI_PAIR) ||
	    (p_first_filter->type == ETH_FILTER_TYPE_MAC_VNI_PAIR) ||
	    (p_first_filter->type == ETH_FILTER_TYPE_VNI))
		p_first_filter->vni = FUNC4(p_filter_cmd->vni);

	if (p_filter_cmd->opcode == ECORE_FILTER_MOVE) {
		p_second_filter->type = p_first_filter->type;
		p_second_filter->mac_msb = p_first_filter->mac_msb;
		p_second_filter->mac_mid = p_first_filter->mac_mid;
		p_second_filter->mac_lsb = p_first_filter->mac_lsb;
		p_second_filter->vlan_id = p_first_filter->vlan_id;
		p_second_filter->vni = p_first_filter->vni;

		p_first_filter->action = ETH_FILTER_ACTION_REMOVE;

		p_first_filter->vport_id = vport_to_remove_from;

		p_second_filter->action = ETH_FILTER_ACTION_ADD;
		p_second_filter->vport_id = vport_to_add_to;
	} else if (p_filter_cmd->opcode == ECORE_FILTER_REPLACE) {
		p_first_filter->vport_id = vport_to_add_to;
		FUNC5(p_second_filter, p_first_filter,
			    sizeof(*p_second_filter));
		p_first_filter->action = ETH_FILTER_ACTION_REMOVE_ALL;
		p_second_filter->action = ETH_FILTER_ACTION_ADD;
	} else {
		action = FUNC7(p_filter_cmd->opcode);

		if (action == MAX_ETH_FILTER_ACTION) {
			FUNC1(p_hwfn, true,
				  "%d is not supported yet\n",
				  p_filter_cmd->opcode);
			return ECORE_NOTIMPL;
		}

		p_first_filter->action = action;
		p_first_filter->vport_id =
			(p_filter_cmd->opcode == ECORE_FILTER_REMOVE) ?
			vport_to_remove_from : vport_to_add_to;
	}

	return ECORE_SUCCESS;
}