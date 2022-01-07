
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_lldp_variables {int dummy; } ;
struct i40e_hw {int dummy; } ;
typedef int mem ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_EMP_MODULE_PTR ;
 int I40E_ERR_PARAM ;
 int I40E_NVM_LLDP_CFG_PTR ;
 int I40E_RESOURCE_READ ;
 int I40E_SR_EMP_MODULE_PTR ;
 int I40E_SR_LLDP_CFG_PTR ;
 int I40E_SR_NVM_CONTROL_WORD ;
 int I40E_SR_NVM_MAP_STRUCTURE_TYPE ;
 int I40E_SUCCESS ;
 int TRUE ;
 int _i40e_read_lldp_cfg (struct i40e_hw*,struct i40e_lldp_variables*,int ,int ) ;
 int i40e_acquire_nvm (struct i40e_hw*,int ) ;
 int i40e_aq_read_nvm (struct i40e_hw*,int ,int ,int,int*,int ,int *) ;
 int i40e_release_nvm (struct i40e_hw*) ;

enum i40e_status_code i40e_read_lldp_cfg(struct i40e_hw *hw,
      struct i40e_lldp_variables *lldp_cfg)
{
 enum i40e_status_code ret = I40E_SUCCESS;
 u32 mem;

 if (!lldp_cfg)
  return I40E_ERR_PARAM;

 ret = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
 if (ret != I40E_SUCCESS)
  return ret;

 ret = i40e_aq_read_nvm(hw, I40E_SR_NVM_CONTROL_WORD, 0, sizeof(mem),
          &mem, TRUE, ((void*)0));
 i40e_release_nvm(hw);
 if (ret != I40E_SUCCESS)
  return ret;





 if (mem & I40E_SR_NVM_MAP_STRUCTURE_TYPE) {

  ret = _i40e_read_lldp_cfg(hw, lldp_cfg, I40E_SR_EMP_MODULE_PTR,
       I40E_SR_LLDP_CFG_PTR);
 } else {

  ret = _i40e_read_lldp_cfg(hw, lldp_cfg, I40E_EMP_MODULE_PTR,
       I40E_NVM_LLDP_CFG_PTR);
 }

 return ret;
}
