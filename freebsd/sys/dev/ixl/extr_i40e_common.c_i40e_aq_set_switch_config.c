
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_hw {int flags; int second_tag; int first_tag; int switch_tag; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_set_switch_config {void* second_tag; void* first_tag; void* switch_tag; int mode; void* valid_flags; void* flags; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 void* CPU_TO_LE16 (int ) ;
 int I40E_HW_FLAG_802_1AD_CAPABLE ;
 int i40e_aqc_opc_set_switch_config ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_set_switch_config(struct i40e_hw *hw,
    u16 flags, u16 valid_flags, u8 mode,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_set_switch_config *scfg =
  (struct i40e_aqc_set_switch_config *)&desc.params.raw;
 enum i40e_status_code status;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_set_switch_config);
 scfg->flags = CPU_TO_LE16(flags);
 scfg->valid_flags = CPU_TO_LE16(valid_flags);
 scfg->mode = mode;
 if (hw->flags & I40E_HW_FLAG_802_1AD_CAPABLE) {
  scfg->switch_tag = CPU_TO_LE16(hw->switch_tag);
  scfg->first_tag = CPU_TO_LE16(hw->first_tag);
  scfg->second_tag = CPU_TO_LE16(hw->second_tag);
 }
 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 return status;
}
