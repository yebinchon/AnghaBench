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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_lldp_get_mib {int type; int /*<<< orphan*/  remote_len; int /*<<< orphan*/  local_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  datalen; TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ I40E_AQ_FLAG_BUF ; 
 scalar_t__ I40E_AQ_FLAG_LB ; 
 int /*<<< orphan*/  I40E_AQ_LARGE_BUF ; 
 int I40E_AQ_LLDP_BRIDGE_TYPE_MASK ; 
 int I40E_AQ_LLDP_BRIDGE_TYPE_SHIFT ; 
 int I40E_AQ_LLDP_MIB_TYPE_MASK ; 
 int I40E_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_lldp_get_mib ; 
 int FUNC2 (struct i40e_hw*,struct i40e_aq_desc*,void*,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC4(struct i40e_hw *hw, u8 bridge_type,
				u8 mib_type, void *buff, u16 buff_size,
				u16 *local_len, u16 *remote_len,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_lldp_get_mib *cmd =
		(struct i40e_aqc_lldp_get_mib *)&desc.params.raw;
	struct i40e_aqc_lldp_get_mib *resp =
		(struct i40e_aqc_lldp_get_mib *)&desc.params.raw;
	enum i40e_status_code status;

	if (buff_size == 0 || !buff)
		return I40E_ERR_PARAM;

	FUNC3(&desc, i40e_aqc_opc_lldp_get_mib);
	/* Indirect Command */
	desc.flags |= FUNC0((u16)I40E_AQ_FLAG_BUF);

	cmd->type = mib_type & I40E_AQ_LLDP_MIB_TYPE_MASK;
	cmd->type |= ((bridge_type << I40E_AQ_LLDP_BRIDGE_TYPE_SHIFT) &
		       I40E_AQ_LLDP_BRIDGE_TYPE_MASK);

	desc.datalen = FUNC0(buff_size);

	desc.flags |= FUNC0((u16)I40E_AQ_FLAG_BUF);
	if (buff_size > I40E_AQ_LARGE_BUF)
		desc.flags |= FUNC0((u16)I40E_AQ_FLAG_LB);

	status = FUNC2(hw, &desc, buff, buff_size, cmd_details);
	if (!status) {
		if (local_len != NULL)
			*local_len = FUNC1(resp->local_len);
		if (remote_len != NULL)
			*remote_len = FUNC1(resp->remote_len);
	}

	return status;
}