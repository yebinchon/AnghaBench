
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aq_set_phy_config {int dummy; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_ERR_PARAM ;
 int i40e_aqc_opc_set_phy_config ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_set_phy_config(struct i40e_hw *hw,
    struct i40e_aq_set_phy_config *config,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aq_set_phy_config *cmd =
  (struct i40e_aq_set_phy_config *)&desc.params.raw;
 enum i40e_status_code status;

 if (!config)
  return I40E_ERR_PARAM;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_set_phy_config);

 *cmd = *config;

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 return status;
}
