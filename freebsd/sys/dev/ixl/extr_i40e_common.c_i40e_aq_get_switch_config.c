
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_switch_seid {int seid; } ;
struct i40e_aqc_get_switch_config_resp {int dummy; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {int flags; TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int CPU_TO_LE16 (int ) ;
 scalar_t__ I40E_AQ_FLAG_BUF ;
 scalar_t__ I40E_AQ_FLAG_LB ;
 int I40E_AQ_LARGE_BUF ;
 int LE16_TO_CPU (int ) ;
 int i40e_aqc_opc_get_switch_config ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,struct i40e_aqc_get_switch_config_resp*,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_get_switch_config(struct i40e_hw *hw,
    struct i40e_aqc_get_switch_config_resp *buf,
    u16 buf_size, u16 *start_seid,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_switch_seid *scfg =
  (struct i40e_aqc_switch_seid *)&desc.params.raw;
 enum i40e_status_code status;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_get_switch_config);
 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_BUF);
 if (buf_size > I40E_AQ_LARGE_BUF)
  desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_LB);
 scfg->seid = CPU_TO_LE16(*start_seid);

 status = i40e_asq_send_command(hw, &desc, buf, buf_size, cmd_details);
 *start_seid = LE16_TO_CPU(scfg->seid);

 return status;
}
