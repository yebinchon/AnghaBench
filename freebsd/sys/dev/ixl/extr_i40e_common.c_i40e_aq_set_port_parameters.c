
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_set_port_parameters {void* command_flags; void* bad_frame_vsi; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 void* CPU_TO_LE16 (int ) ;
 int I40E_AQ_SET_P_PARAMS_DOUBLE_VLAN_ENA ;
 int I40E_AQ_SET_P_PARAMS_PAD_SHORT_PACKETS ;
 int I40E_AQ_SET_P_PARAMS_SAVE_BAD_PACKETS ;
 int i40e_aqc_opc_set_port_parameters ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_set_port_parameters(struct i40e_hw *hw,
    u16 bad_frame_vsi, bool save_bad_pac,
    bool pad_short_pac, bool double_vlan,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aqc_set_port_parameters *cmd;
 enum i40e_status_code status;
 struct i40e_aq_desc desc;
 u16 command_flags = 0;

 cmd = (struct i40e_aqc_set_port_parameters *)&desc.params.raw;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_set_port_parameters);

 cmd->bad_frame_vsi = CPU_TO_LE16(bad_frame_vsi);
 if (save_bad_pac)
  command_flags |= I40E_AQ_SET_P_PARAMS_SAVE_BAD_PACKETS;
 if (pad_short_pac)
  command_flags |= I40E_AQ_SET_P_PARAMS_PAD_SHORT_PACKETS;
 if (double_vlan)
  command_flags |= I40E_AQ_SET_P_PARAMS_DOUBLE_VLAN_ENA;
 cmd->command_flags = CPU_TO_LE16(command_flags);

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 return status;
}
