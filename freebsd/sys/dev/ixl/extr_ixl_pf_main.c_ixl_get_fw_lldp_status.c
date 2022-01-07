
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i40e_hw {int port; } ;
struct ixl_pf {int state; int dev; struct i40e_hw hw; } ;
struct i40e_lldp_variables {int adminstatus; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_SUCCESS ;
 int IXL_PF_STATE_FW_LLDP_DISABLED ;
 int atomic_clear_int (int *,int ) ;
 int atomic_set_int (int *,int ) ;
 int device_printf (int ,char*) ;
 int i40e_read_lldp_cfg (struct i40e_hw*,struct i40e_lldp_variables*) ;

int
ixl_get_fw_lldp_status(struct ixl_pf *pf)
{
 enum i40e_status_code ret = I40E_SUCCESS;
 struct i40e_lldp_variables lldp_cfg;
 struct i40e_hw *hw = &pf->hw;
 u8 adminstatus = 0;

 ret = i40e_read_lldp_cfg(hw, &lldp_cfg);
 if (ret)
  return ret;


 adminstatus = lldp_cfg.adminstatus >> (hw->port * 4);
 adminstatus &= 0xf;


 if (!adminstatus) {
  device_printf(pf->dev, "FW LLDP agent is disabled for this PF.\n");
  atomic_set_int(&pf->state, IXL_PF_STATE_FW_LLDP_DISABLED);
 } else
  atomic_clear_int(&pf->state, IXL_PF_STATE_FW_LLDP_DISABLED);

 return (0);
}
