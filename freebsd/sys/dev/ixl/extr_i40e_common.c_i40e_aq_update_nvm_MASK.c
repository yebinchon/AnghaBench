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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_2__ mac; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_nvm_update {int command_flags; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; scalar_t__ module_pointer; } ;
struct TYPE_3__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {int /*<<< orphan*/  flags; TYPE_1__ params; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int I40E_AQ_FLAG_BUF ; 
 scalar_t__ I40E_AQ_FLAG_LB ; 
 int I40E_AQ_FLAG_RD ; 
 int /*<<< orphan*/  I40E_AQ_LARGE_BUF ; 
 int I40E_AQ_NVM_LAST_CMD ; 
 int I40E_AQ_NVM_PRESERVATION_FLAGS_ALL ; 
 int I40E_AQ_NVM_PRESERVATION_FLAGS_SELECTED ; 
 int I40E_AQ_NVM_PRESERVATION_FLAGS_SHIFT ; 
 int I40E_ERR_PARAM ; 
 scalar_t__ I40E_MAC_X722 ; 
 scalar_t__ I40E_NVM_PRESERVATION_FLAGS_ALL ; 
 scalar_t__ I40E_NVM_PRESERVATION_FLAGS_SELECTED ; 
 int /*<<< orphan*/  i40e_aqc_opc_nvm_update ; 
 int FUNC3 (struct i40e_hw*,struct i40e_aq_desc*,void*,int /*<<< orphan*/ ,struct i40e_asq_cmd_details*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC5(struct i40e_hw *hw, u8 module_pointer,
				u32 offset, u16 length, void *data,
				bool last_command, u8 preservation_flags,
				struct i40e_asq_cmd_details *cmd_details)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_nvm_update *cmd =
		(struct i40e_aqc_nvm_update *)&desc.params.raw;
	enum i40e_status_code status;

	FUNC2("i40e_aq_update_nvm");

	/* In offset the highest byte must be zeroed. */
	if (offset & 0xFF000000) {
		status = I40E_ERR_PARAM;
		goto i40e_aq_update_nvm_exit;
	}

	FUNC4(&desc, i40e_aqc_opc_nvm_update);

	/* If this is the last command in a series, set the proper flag. */
	if (last_command)
		cmd->command_flags |= I40E_AQ_NVM_LAST_CMD;
	if (hw->mac.type == I40E_MAC_X722) {
		if (preservation_flags == I40E_NVM_PRESERVATION_FLAGS_SELECTED)
			cmd->command_flags |=
				(I40E_AQ_NVM_PRESERVATION_FLAGS_SELECTED <<
				 I40E_AQ_NVM_PRESERVATION_FLAGS_SHIFT);
		else if (preservation_flags == I40E_NVM_PRESERVATION_FLAGS_ALL)
			cmd->command_flags |=
				(I40E_AQ_NVM_PRESERVATION_FLAGS_ALL <<
				 I40E_AQ_NVM_PRESERVATION_FLAGS_SHIFT);
	}
	cmd->module_pointer = module_pointer;
	cmd->offset = FUNC1(offset);
	cmd->length = FUNC0(length);

	desc.flags |= FUNC0((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
	if (length > I40E_AQ_LARGE_BUF)
		desc.flags |= FUNC0((u16)I40E_AQ_FLAG_LB);

	status = FUNC3(hw, &desc, data, length, cmd_details);

i40e_aq_update_nvm_exit:
	return status;
}