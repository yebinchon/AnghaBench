
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_configure_switching_comp_ets_bw_limit_data {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int i40e_aq_tx_sched_cmd (struct i40e_hw*,int ,void*,int,int ,struct i40e_asq_cmd_details*) ;
 int i40e_aqc_opc_configure_switching_comp_ets_bw_limit ;

enum i40e_status_code i40e_aq_config_switch_comp_ets_bw_limit(
 struct i40e_hw *hw, u16 seid,
 struct i40e_aqc_configure_switching_comp_ets_bw_limit_data *bw_data,
 struct i40e_asq_cmd_details *cmd_details)
{
 return i40e_aq_tx_sched_cmd(hw, seid, (void *)bw_data, sizeof(*bw_data),
       i40e_aqc_opc_configure_switching_comp_ets_bw_limit,
       cmd_details);
}
