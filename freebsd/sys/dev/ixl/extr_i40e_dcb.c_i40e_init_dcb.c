
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i40e_lldp_variables {int adminstatus; } ;
struct TYPE_2__ {int dcb; } ;
struct i40e_hw {int port; int dcbx_status; TYPE_1__ func_caps; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;







 int I40E_SUCCESS ;
 int TRUE ;
 int i40e_aq_cfg_lldp_mib_change_event (struct i40e_hw*,int ,int *) ;
 int i40e_get_dcb_config (struct i40e_hw*) ;
 int i40e_get_dcbx_status (struct i40e_hw*,int*) ;
 int i40e_read_lldp_cfg (struct i40e_hw*,struct i40e_lldp_variables*) ;

enum i40e_status_code i40e_init_dcb(struct i40e_hw *hw)
{
 enum i40e_status_code ret = I40E_SUCCESS;
 struct i40e_lldp_variables lldp_cfg;
 u8 adminstatus = 0;

 if (!hw->func_caps.dcb)
  return ret;


 ret = i40e_read_lldp_cfg(hw, &lldp_cfg);
 if (ret)
  return ret;


 adminstatus = lldp_cfg.adminstatus >> (hw->port * 4);
 adminstatus &= 0xF;


 if (!adminstatus) {
  hw->dcbx_status = 132;
  return ret;
 }


 ret = i40e_get_dcbx_status(hw, &hw->dcbx_status);
 if (ret)
  return ret;


 switch (hw->dcbx_status) {
 case 131:
 case 130:

  ret = i40e_get_dcb_config(hw);
  if (ret)
   return ret;
  break;
 case 132:
  return ret;
 case 128:
 case 129:
 default:
  break;
 }


 ret = i40e_aq_cfg_lldp_mib_change_event(hw, TRUE, ((void*)0));
 if (ret)
  return ret;

 return ret;
}
