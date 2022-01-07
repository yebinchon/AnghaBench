
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_add_remove_statistics {void* stat_index; void* vlan; void* seid; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 void* CPU_TO_LE16 (scalar_t__) ;
 int I40E_ERR_PARAM ;
 int i40e_aqc_opc_remove_statistics ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_remove_statistics(struct i40e_hw *hw, u16 seid,
    u16 vlan_id, u16 stat_index,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_add_remove_statistics *cmd =
  (struct i40e_aqc_add_remove_statistics *)&desc.params.raw;
 enum i40e_status_code status;

 if (seid == 0)
  return I40E_ERR_PARAM;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_remove_statistics);

 cmd->seid = CPU_TO_LE16(seid);
 cmd->vlan = CPU_TO_LE16(vlan_id);
 cmd->stat_index = CPU_TO_LE16(stat_index);

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 return status;
}
