
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ arq_last_status; } ;
struct i40e_hw {int nvmupd_state; TYPE_1__ aq; scalar_t__ nvm_wait_opcode; scalar_t__ nvm_release_on_done; } ;


 scalar_t__ FALSE ;
 int I40E_DEBUG_NVM ;
 int I40E_NVMUPD_STATE_ERROR ;
 int I40E_NVMUPD_STATE_INIT ;


 int I40E_NVMUPD_STATE_WRITING ;
 int i40e_debug (struct i40e_hw*,int ,char*,scalar_t__) ;
 int i40e_release_nvm (struct i40e_hw*) ;

void i40e_nvmupd_clear_wait_state(struct i40e_hw *hw)
{
 i40e_debug(hw, I40E_DEBUG_NVM,
     "NVMUPD: clearing wait on opcode 0x%04x\n",
     hw->nvm_wait_opcode);

 if (hw->nvm_release_on_done) {
  i40e_release_nvm(hw);
  hw->nvm_release_on_done = FALSE;
 }
 hw->nvm_wait_opcode = 0;

 if (hw->aq.arq_last_status) {
  hw->nvmupd_state = I40E_NVMUPD_STATE_ERROR;
  return;
 }

 switch (hw->nvmupd_state) {
 case 129:
  hw->nvmupd_state = I40E_NVMUPD_STATE_INIT;
  break;

 case 128:
  hw->nvmupd_state = I40E_NVMUPD_STATE_WRITING;
  break;

 default:
  break;
 }
}
