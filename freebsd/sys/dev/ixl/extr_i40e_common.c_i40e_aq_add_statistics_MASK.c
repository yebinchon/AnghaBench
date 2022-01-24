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
typedef  scalar_t__ u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_add_remove_statistics {int /*<<< orphan*/  stat_index; void* vlan; void* seid; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int I40E_ERR_PARAM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_add_statistics ; 
 int FUNC2 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC4(struct i40e_hw *hw, u16 seid,
				u16 vlan_id, u16 *stat_index,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_add_remove_statistics *cmd_resp =
		(struct i40e_aqc_add_remove_statistics *)&desc.params.raw;
	enum i40e_status_code status;

	if ((seid == 0) || (stat_index == NULL))
		return I40E_ERR_PARAM;

	FUNC3(&desc, i40e_aqc_opc_add_statistics);

	cmd_resp->seid = FUNC0(seid);
	cmd_resp->vlan = FUNC0(vlan_id);

	status = FUNC2(hw, &desc, NULL, 0, cmd_details);

	if (!status && stat_index)
		*stat_index = FUNC1(cmd_resp->stat_index);

	return status;
}