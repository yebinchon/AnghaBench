
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_nvm_update {int length; int offset; int module_pointer; int command_flags; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {int flags; TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int CPU_TO_LE16 (int ) ;
 int CPU_TO_LE32 (int) ;
 int DEBUGFUNC (char*) ;
 scalar_t__ I40E_AQ_FLAG_BUF ;
 scalar_t__ I40E_AQ_FLAG_LB ;
 int I40E_AQ_LARGE_BUF ;
 int I40E_AQ_NVM_LAST_CMD ;
 int I40E_ERR_PARAM ;
 int i40e_aqc_opc_nvm_read ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,void*,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_read_nvm(struct i40e_hw *hw, u8 module_pointer,
    u32 offset, u16 length, void *data,
    bool last_command,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_nvm_update *cmd =
  (struct i40e_aqc_nvm_update *)&desc.params.raw;
 enum i40e_status_code status;

 DEBUGFUNC("i40e_aq_read_nvm");


 if (offset & 0xFF000000) {
  status = I40E_ERR_PARAM;
  goto i40e_aq_read_nvm_exit;
 }

 i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_nvm_read);


 if (last_command)
  cmd->command_flags |= I40E_AQ_NVM_LAST_CMD;
 cmd->module_pointer = module_pointer;
 cmd->offset = CPU_TO_LE32(offset);
 cmd->length = CPU_TO_LE16(length);

 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_BUF);
 if (length > I40E_AQ_LARGE_BUF)
  desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_LB);

 status = i40e_asq_send_command(hw, &desc, data, length, cmd_details);

i40e_aq_read_nvm_exit:
 return status;
}
