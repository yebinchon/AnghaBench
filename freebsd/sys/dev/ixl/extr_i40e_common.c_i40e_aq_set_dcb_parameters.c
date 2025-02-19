
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int api_maj_ver; int api_min_ver; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ mac; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_set_dcb_parameters {int command; int valid_flags; } ;
struct TYPE_6__ {int raw; } ;
struct i40e_aq_desc {TYPE_3__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_AQ_DCB_SET_AGENT ;
 int I40E_DCB_VALID ;
 int I40E_ERR_DEVICE_NOT_SUPPORTED ;
 scalar_t__ I40E_MAC_XL710 ;
 int i40e_aqc_opc_set_dcb_parameters ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code
i40e_aq_set_dcb_parameters(struct i40e_hw *hw, bool dcb_enable,
      struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_set_dcb_parameters *cmd =
  (struct i40e_aqc_set_dcb_parameters *)&desc.params.raw;
 enum i40e_status_code status;

 if ((hw->mac.type != I40E_MAC_XL710) ||
     ((hw->aq.api_maj_ver < 1) ||
      ((hw->aq.api_maj_ver == 1) && (hw->aq.api_min_ver < 6))))
  return I40E_ERR_DEVICE_NOT_SUPPORTED;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_set_dcb_parameters);

 if (dcb_enable) {
  cmd->valid_flags = I40E_DCB_VALID;
  cmd->command = I40E_AQ_DCB_SET_AGENT;
 }
 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 return status;
}
