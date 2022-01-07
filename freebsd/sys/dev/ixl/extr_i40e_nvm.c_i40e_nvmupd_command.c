
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_nvm_access {int offset; int data_size; int config; int command; } ;
struct TYPE_2__ {int arq_spinlock; } ;
struct i40e_hw {int nvmupd_state; TYPE_1__ aq; int nvm_wait_opcode; int nvm_release_on_done; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef enum i40e_nvmupd_cmd { ____Placeholder_i40e_nvmupd_cmd } i40e_nvmupd_cmd ;


 int DEBUGFUNC (char*) ;
 int EBUSY ;
 int EFAULT ;
 int ESRCH ;
 int I40E_DEBUG_NVM ;
 int I40E_ERR_BUF_TOO_SHORT ;
 int I40E_ERR_NOT_READY ;
 int I40E_NOT_SUPPORTED ;
 int I40E_NVMUPD_INVALID ;
 int I40E_NVMUPD_STATE_ERROR ;





 int I40E_NVMUPD_STATUS ;
 int I40E_SUCCESS ;
 int i40e_acquire_spinlock (int *) ;
 int i40e_debug (struct i40e_hw*,int ,char*,...) ;
 int * i40e_nvm_update_state_str ;
 int i40e_nvmupd_clear_wait_state (struct i40e_hw*) ;
 int i40e_nvmupd_state_init (struct i40e_hw*,struct i40e_nvm_access*,int*,int*) ;
 int i40e_nvmupd_state_reading (struct i40e_hw*,struct i40e_nvm_access*,int*,int*) ;
 int i40e_nvmupd_state_writing (struct i40e_hw*,struct i40e_nvm_access*,int*,int*) ;
 int i40e_nvmupd_validate_command (struct i40e_hw*,struct i40e_nvm_access*,int*) ;
 int i40e_release_spinlock (int *) ;

enum i40e_status_code i40e_nvmupd_command(struct i40e_hw *hw,
       struct i40e_nvm_access *cmd,
       u8 *bytes, int *perrno)
{
 enum i40e_status_code status;
 enum i40e_nvmupd_cmd upd_cmd;

 DEBUGFUNC("i40e_nvmupd_command");


 *perrno = 0;


 upd_cmd = i40e_nvmupd_validate_command(hw, cmd, perrno);

 i40e_debug(hw, I40E_DEBUG_NVM, "%s state %d nvm_release_on_hold %d opc 0x%04x cmd 0x%08x config 0x%08x offset 0x%08x data_size 0x%08x\n",
     i40e_nvm_update_state_str[upd_cmd],
     hw->nvmupd_state,
     hw->nvm_release_on_done, hw->nvm_wait_opcode,
     cmd->command, cmd->config, cmd->offset, cmd->data_size);

 if (upd_cmd == I40E_NVMUPD_INVALID) {
  *perrno = -EFAULT;
  i40e_debug(hw, I40E_DEBUG_NVM,
      "i40e_nvmupd_validate_command returns %d errno %d\n",
      upd_cmd, *perrno);
 }




 if (upd_cmd == I40E_NVMUPD_STATUS) {
  if (!cmd->data_size) {
   *perrno = -EFAULT;
   return I40E_ERR_BUF_TOO_SHORT;
  }

  bytes[0] = hw->nvmupd_state;

  if (cmd->data_size >= 4) {
   bytes[1] = 0;
   *((u16 *)&bytes[2]) = hw->nvm_wait_opcode;
  }


  if (hw->nvmupd_state == I40E_NVMUPD_STATE_ERROR)
   hw->nvmupd_state = 132;

  return I40E_SUCCESS;
 }


 if (hw->nvmupd_state == I40E_NVMUPD_STATE_ERROR) {
  i40e_debug(hw, I40E_DEBUG_NVM,
      "Clearing I40E_NVMUPD_STATE_ERROR state without reading\n");
  hw->nvmupd_state = 132;
 }
 i40e_acquire_spinlock(&hw->aq.arq_spinlock);
 switch (hw->nvmupd_state) {
 case 132:
  status = i40e_nvmupd_state_init(hw, cmd, bytes, perrno);
  break;

 case 130:
  status = i40e_nvmupd_state_reading(hw, cmd, bytes, perrno);
  break;

 case 128:
  status = i40e_nvmupd_state_writing(hw, cmd, bytes, perrno);
  break;

 case 131:
 case 129:



  if (cmd->offset == 0xffff) {
   i40e_nvmupd_clear_wait_state(hw);
   status = I40E_SUCCESS;
   break;
  }

  status = I40E_ERR_NOT_READY;
  *perrno = -EBUSY;
  break;

 default:

  i40e_debug(hw, I40E_DEBUG_NVM,
      "NVMUPD: no such state %d\n", hw->nvmupd_state);
  status = I40E_NOT_SUPPORTED;
  *perrno = -ESRCH;
  break;
 }

 i40e_release_spinlock(&hw->aq.arq_spinlock);
 return status;
}
