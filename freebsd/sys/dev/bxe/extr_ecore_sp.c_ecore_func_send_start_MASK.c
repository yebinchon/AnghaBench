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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
struct function_start_data {int sd_accept_mf_clss_fail_match_ethtype; int /*<<< orphan*/  c2s_pri_default; TYPE_2__ c2s_pri_trans_table; scalar_t__ c2s_pri_tt_valid; int /*<<< orphan*/  no_added_tags; void* sd_vlan_eth_type; int /*<<< orphan*/  sd_vlan_force_pri_val; int /*<<< orphan*/  sd_vlan_force_pri_flg; void* sd_accept_mf_clss_fail_ethtype; int /*<<< orphan*/  sd_accept_mf_clss_fail; int /*<<< orphan*/  inner_rss; int /*<<< orphan*/  inner_clss_vxlan; int /*<<< orphan*/  inner_clss_l2geneve; int /*<<< orphan*/  inner_clss_l2gre; int /*<<< orphan*/  geneve_dst_port; int /*<<< orphan*/  vxlan_dst_port; int /*<<< orphan*/  network_cos_mode; int /*<<< orphan*/  path_id; void* sd_vlan_tag; scalar_t__ function_mode; } ;
struct ecore_func_start_params {int /*<<< orphan*/  c2s_pri_default; int /*<<< orphan*/  c2s_pri; scalar_t__ c2s_pri_valid; int /*<<< orphan*/  no_added_tags; scalar_t__ sd_vlan_eth_type; int /*<<< orphan*/  sd_vlan_force_pri_val; int /*<<< orphan*/  sd_vlan_force_pri; scalar_t__ class_fail_ethtype; int /*<<< orphan*/  class_fail; int /*<<< orphan*/  inner_rss; int /*<<< orphan*/  inner_clss_vxlan; int /*<<< orphan*/  inner_clss_l2geneve; int /*<<< orphan*/  inner_clss_l2gre; int /*<<< orphan*/  geneve_dst_port; int /*<<< orphan*/  vxlan_dst_port; int /*<<< orphan*/  network_cos_mode; scalar_t__ sd_vlan_tag; scalar_t__ mf_mode; } ;
struct TYPE_3__ {struct ecore_func_start_params start; } ;
struct ecore_func_state_params {TYPE_1__ params; struct ecore_func_sp_obj* f_obj; } ;
struct ecore_func_sp_obj {int /*<<< orphan*/  rdata_mapping; scalar_t__ rdata; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  ecore_dma_addr_t ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct function_start_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  MAX_VLAN_PRIORITIES ; 
 int /*<<< orphan*/  NONE_CONNECTION_TYPE ; 
 int /*<<< orphan*/  RAMROD_CMD_ID_COMMON_FUNCTION_START ; 
 int FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct bxe_softc *sc,
					struct ecore_func_state_params *params)
{
	struct ecore_func_sp_obj *o = params->f_obj;
	struct function_start_data *rdata =
		(struct function_start_data *)o->rdata;
	ecore_dma_addr_t data_mapping = o->rdata_mapping;
	struct ecore_func_start_params *start_params = &params->params.start;

	FUNC1(rdata, 0, sizeof(*rdata));

	/* Fill the ramrod data with provided parameters */
	rdata->function_mode	= (uint8_t)start_params->mf_mode;
	rdata->sd_vlan_tag	= FUNC0(start_params->sd_vlan_tag);
	rdata->path_id		= FUNC2(sc);
	rdata->network_cos_mode	= start_params->network_cos_mode;

	rdata->vxlan_dst_port	= start_params->vxlan_dst_port;
	rdata->geneve_dst_port	= start_params->geneve_dst_port;
	rdata->inner_clss_l2gre	= start_params->inner_clss_l2gre;
	rdata->inner_clss_l2geneve = start_params->inner_clss_l2geneve;
	rdata->inner_clss_vxlan	= start_params->inner_clss_vxlan;
	rdata->inner_rss	= start_params->inner_rss;

	rdata->sd_accept_mf_clss_fail = start_params->class_fail;
	if (start_params->class_fail_ethtype) {
		rdata->sd_accept_mf_clss_fail_match_ethtype = 1;
		rdata->sd_accept_mf_clss_fail_ethtype =
			FUNC0(start_params->class_fail_ethtype);
	}
	rdata->sd_vlan_force_pri_flg = start_params->sd_vlan_force_pri;
	rdata->sd_vlan_force_pri_val = start_params->sd_vlan_force_pri_val;

	/** @@@TMP - until FW 7.10.7 (which will introduce an HSI change)
	 * `sd_vlan_eth_type' will replace ethertype in SD mode even if
	 * it's set to 0; This will probably break SD, so we're setting it
	 * to ethertype 0x8100 for now.
	 */
	if (start_params->sd_vlan_eth_type)
		rdata->sd_vlan_eth_type =
			FUNC0(start_params->sd_vlan_eth_type);
	else
		rdata->sd_vlan_eth_type =
			FUNC0((uint16_t) 0x8100);

	rdata->no_added_tags = start_params->no_added_tags;

	rdata->c2s_pri_tt_valid = start_params->c2s_pri_valid;
	if (rdata->c2s_pri_tt_valid) {
		FUNC4(rdata->c2s_pri_trans_table.val,
		       start_params->c2s_pri,
		       MAX_VLAN_PRIORITIES);
		rdata->c2s_pri_default = start_params->c2s_pri_default;
	}

	/* No need for an explicit memory barrier here as long as we
	 * ensure the ordering of writing to the SPQ element
	 *  and updating of the SPQ producer which involves a memory
	 * read. If the memory read is removed we will have to put a
	 * full memory barrier there (inside ecore_sp_post()).
	 */
	return FUNC3(sc, RAMROD_CMD_ID_COMMON_FUNCTION_START, 0,
			     data_mapping, NONE_CONNECTION_TYPE);
}