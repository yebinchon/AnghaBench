
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_configure_switching_comp_bw_limit {int max_bw; void* credit; void* seid; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 void* CPU_TO_LE16 (int ) ;
 int i40e_aqc_opc_configure_switching_comp_bw_limit ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_config_switch_comp_bw_limit(struct i40e_hw *hw,
    u16 seid, u16 credit, u8 max_bw,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_configure_switching_comp_bw_limit *cmd =
   (struct i40e_aqc_configure_switching_comp_bw_limit *)&desc.params.raw;
 enum i40e_status_code status;

 i40e_fill_default_direct_cmd_desc(&desc,
    i40e_aqc_opc_configure_switching_comp_bw_limit);

 cmd->seid = CPU_TO_LE16(seid);
 cmd->credit = CPU_TO_LE16(credit);
 cmd->max_bw = max_bw;

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 return status;
}
