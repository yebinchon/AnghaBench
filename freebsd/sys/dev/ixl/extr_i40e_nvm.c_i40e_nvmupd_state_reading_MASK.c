#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct i40e_nvm_access {int dummy; } ;
struct i40e_hw {int /*<<< orphan*/  nvmupd_state; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  enum i40e_nvmupd_cmd { ____Placeholder_i40e_nvmupd_cmd } i40e_nvmupd_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ESRCH ; 
 int /*<<< orphan*/  I40E_DEBUG_NVM ; 
 int I40E_NOT_SUPPORTED ; 
#define  I40E_NVMUPD_READ_CON 130 
#define  I40E_NVMUPD_READ_LCB 129 
#define  I40E_NVMUPD_READ_SA 128 
 int /*<<< orphan*/  I40E_NVMUPD_STATE_INIT ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * i40e_nvm_update_state_str ; 
 int FUNC2 (struct i40e_hw*,struct i40e_nvm_access*,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (struct i40e_hw*,struct i40e_nvm_access*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*) ; 

__attribute__((used)) static enum i40e_status_code FUNC5(struct i40e_hw *hw,
						    struct i40e_nvm_access *cmd,
						    u8 *bytes, int *perrno)
{
	enum i40e_status_code status = I40E_SUCCESS;
	enum i40e_nvmupd_cmd upd_cmd;

	FUNC0("i40e_nvmupd_state_reading");

	upd_cmd = FUNC3(hw, cmd, perrno);

	switch (upd_cmd) {
	case I40E_NVMUPD_READ_SA:
	case I40E_NVMUPD_READ_CON:
		status = FUNC2(hw, cmd, bytes, perrno);
		break;

	case I40E_NVMUPD_READ_LCB:
		status = FUNC2(hw, cmd, bytes, perrno);
		FUNC4(hw);
		hw->nvmupd_state = I40E_NVMUPD_STATE_INIT;
		break;

	default:
		FUNC1(hw, I40E_DEBUG_NVM,
			   "NVMUPD: bad cmd %s in reading state.\n",
			   i40e_nvm_update_state_str[upd_cmd]);
		status = I40E_NOT_SUPPORTED;
		*perrno = -ESRCH;
		break;
	}
	return status;
}