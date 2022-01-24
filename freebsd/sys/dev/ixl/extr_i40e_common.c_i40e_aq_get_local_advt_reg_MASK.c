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
typedef  int u64 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_an_advt_reg {int /*<<< orphan*/  local_an_reg0; int /*<<< orphan*/  local_an_reg1; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int I40E_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_get_local_advt_reg ; 
 int FUNC2 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC4(struct i40e_hw *hw,
				u64 *advt_reg,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_an_advt_reg *resp =
		(struct i40e_aqc_an_advt_reg *)&desc.params.raw;
	enum i40e_status_code status;

	FUNC3(&desc,
					  i40e_aqc_opc_get_local_advt_reg);

	status = FUNC2(hw, &desc, NULL, 0, cmd_details);

	if (status != I40E_SUCCESS)
		goto aq_get_local_advt_reg_exit;

	*advt_reg = (u64)(FUNC0(resp->local_an_reg1)) << 32;
	*advt_reg |= FUNC1(resp->local_an_reg0);

aq_get_local_advt_reg_exit:
	return status;
}