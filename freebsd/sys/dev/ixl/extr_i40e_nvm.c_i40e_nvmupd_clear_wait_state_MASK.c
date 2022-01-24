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
struct TYPE_2__ {scalar_t__ arq_last_status; } ;
struct i40e_hw {int nvmupd_state; TYPE_1__ aq; scalar_t__ nvm_wait_opcode; scalar_t__ nvm_release_on_done; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  I40E_DEBUG_NVM ; 
 int I40E_NVMUPD_STATE_ERROR ; 
 int I40E_NVMUPD_STATE_INIT ; 
#define  I40E_NVMUPD_STATE_INIT_WAIT 129 
#define  I40E_NVMUPD_STATE_WRITE_WAIT 128 
 int I40E_NVMUPD_STATE_WRITING ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*) ; 

void FUNC2(struct i40e_hw *hw)
{
	FUNC0(hw, I40E_DEBUG_NVM,
		   "NVMUPD: clearing wait on opcode 0x%04x\n",
		   hw->nvm_wait_opcode);

	if (hw->nvm_release_on_done) {
		FUNC1(hw);
		hw->nvm_release_on_done = FALSE;
	}
	hw->nvm_wait_opcode = 0;

	if (hw->aq.arq_last_status) {
		hw->nvmupd_state = I40E_NVMUPD_STATE_ERROR;
		return;
	}

	switch (hw->nvmupd_state) {
	case I40E_NVMUPD_STATE_INIT_WAIT:
		hw->nvmupd_state = I40E_NVMUPD_STATE_INIT;
		break;

	case I40E_NVMUPD_STATE_WRITE_WAIT:
		hw->nvmupd_state = I40E_NVMUPD_STATE_WRITING;
		break;

	default:
		break;
	}
}