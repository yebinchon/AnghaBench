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
struct i40e_aqc_get_veb_parameters_completion {int /*<<< orphan*/  veb_flags; int /*<<< orphan*/  vebs_free; int /*<<< orphan*/  vebs_used; int /*<<< orphan*/  statistic_index; int /*<<< orphan*/  switch_id; int /*<<< orphan*/  seid; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FALSE ; 
 scalar_t__ I40E_AQC_ADD_VEB_FLOATING ; 
 int I40E_ERR_PARAM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  i40e_aqc_opc_get_veb_parameters ; 
 int FUNC2 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC4(struct i40e_hw *hw,
				u16 veb_seid, u16 *switch_id,
				bool *floating, u16 *statistic_index,
				u16 *vebs_used, u16 *vebs_free,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_get_veb_parameters_completion *cmd_resp =
		(struct i40e_aqc_get_veb_parameters_completion *)
		&desc.params.raw;
	enum i40e_status_code status;

	if (veb_seid == 0)
		return I40E_ERR_PARAM;

	FUNC3(&desc,
					  i40e_aqc_opc_get_veb_parameters);
	cmd_resp->seid = FUNC0(veb_seid);

	status = FUNC2(hw, &desc, NULL, 0, cmd_details);
	if (status)
		goto get_veb_exit;

	if (switch_id)
		*switch_id = FUNC1(cmd_resp->switch_id);
	if (statistic_index)
		*statistic_index = FUNC1(cmd_resp->statistic_index);
	if (vebs_used)
		*vebs_used = FUNC1(cmd_resp->vebs_used);
	if (vebs_free)
		*vebs_free = FUNC1(cmd_resp->vebs_free);
	if (floating) {
		u16 flags = FUNC1(cmd_resp->veb_flags);

		if (flags & I40E_AQC_ADD_VEB_FLOATING)
			*floating = TRUE;
		else
			*floating = FALSE;
	}

get_veb_exit:
	return status;
}