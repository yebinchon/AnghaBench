
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i40e_nvm_access {int dummy; } ;
struct i40e_hw {int nvmupd_state; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef enum i40e_nvmupd_cmd { ____Placeholder_i40e_nvmupd_cmd } i40e_nvmupd_cmd ;


 int DEBUGFUNC (char*) ;
 int ESRCH ;
 int I40E_DEBUG_NVM ;
 int I40E_NOT_SUPPORTED ;



 int I40E_NVMUPD_STATE_INIT ;
 int I40E_SUCCESS ;
 int i40e_debug (struct i40e_hw*,int ,char*,int ) ;
 int * i40e_nvm_update_state_str ;
 int i40e_nvmupd_nvm_read (struct i40e_hw*,struct i40e_nvm_access*,int *,int*) ;
 int i40e_nvmupd_validate_command (struct i40e_hw*,struct i40e_nvm_access*,int*) ;
 int i40e_release_nvm (struct i40e_hw*) ;

__attribute__((used)) static enum i40e_status_code i40e_nvmupd_state_reading(struct i40e_hw *hw,
          struct i40e_nvm_access *cmd,
          u8 *bytes, int *perrno)
{
 enum i40e_status_code status = I40E_SUCCESS;
 enum i40e_nvmupd_cmd upd_cmd;

 DEBUGFUNC("i40e_nvmupd_state_reading");

 upd_cmd = i40e_nvmupd_validate_command(hw, cmd, perrno);

 switch (upd_cmd) {
 case 128:
 case 130:
  status = i40e_nvmupd_nvm_read(hw, cmd, bytes, perrno);
  break;

 case 129:
  status = i40e_nvmupd_nvm_read(hw, cmd, bytes, perrno);
  i40e_release_nvm(hw);
  hw->nvmupd_state = I40E_NVMUPD_STATE_INIT;
  break;

 default:
  i40e_debug(hw, I40E_DEBUG_NVM,
      "NVMUPD: bad cmd %s in reading state.\n",
      i40e_nvm_update_state_str[upd_cmd]);
  status = I40E_NOT_SUPPORTED;
  *perrno = -ESRCH;
  break;
 }
 return status;
}
