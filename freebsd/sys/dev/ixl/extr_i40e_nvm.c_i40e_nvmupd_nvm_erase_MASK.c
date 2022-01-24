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
struct i40e_nvm_access {scalar_t__ data_size; int /*<<< orphan*/  offset; int /*<<< orphan*/  config; } ;
struct TYPE_2__ {int /*<<< orphan*/  asq_last_status; } ;
struct i40e_hw {TYPE_1__ aq; int /*<<< orphan*/  nvm_wb_desc; } ;
struct i40e_asq_cmd_details {int /*<<< orphan*/ * wb_desc; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  cmd_details ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_DEBUG_NVM ; 
 int I40E_NVM_LCB ; 
 int I40E_SUCCESS ; 
 int FUNC0 (struct i40e_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct i40e_asq_cmd_details*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_asq_cmd_details*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum i40e_status_code FUNC6(struct i40e_hw *hw,
						   struct i40e_nvm_access *cmd,
						   int *perrno)
{
	enum i40e_status_code status = I40E_SUCCESS;
	struct i40e_asq_cmd_details cmd_details;
	u8 module, transaction;
	bool last;

	transaction = FUNC4(cmd->config);
	module = FUNC3(cmd->config);
	last = (transaction & I40E_NVM_LCB);

	FUNC5(&cmd_details, 0, sizeof(cmd_details));
	cmd_details.wb_desc = &hw->nvm_wb_desc;

	status = FUNC0(hw, module, cmd->offset, (u16)cmd->data_size,
				   last, &cmd_details);
	if (status) {
		FUNC2(hw, I40E_DEBUG_NVM,
			   "i40e_nvmupd_nvm_erase mod 0x%x  off 0x%x len 0x%x\n",
			   module, cmd->offset, cmd->data_size);
		FUNC2(hw, I40E_DEBUG_NVM,
			   "i40e_nvmupd_nvm_erase status %d aq %d\n",
			   status, hw->aq.asq_last_status);
		*perrno = FUNC1(status, hw->aq.asq_last_status);
	}

	return status;
}