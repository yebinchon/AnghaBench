
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_debug_reg_read_write {void* value_low; void* value_high; void* address; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 void* CPU_TO_LE32 (int ) ;
 int i40e_aqc_opc_debug_write_reg ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_debug_write_register(struct i40e_hw *hw,
    u32 reg_addr, u64 reg_val,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_debug_reg_read_write *cmd =
  (struct i40e_aqc_debug_reg_read_write *)&desc.params.raw;
 enum i40e_status_code status;

 i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_debug_write_reg);

 cmd->address = CPU_TO_LE32(reg_addr);
 cmd->value_high = CPU_TO_LE32((u32)(reg_val >> 32));
 cmd->value_low = CPU_TO_LE32((u32)(reg_val & 0xFFFFFFFF));

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 return status;
}
