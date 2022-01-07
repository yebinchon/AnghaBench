
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i40e_virt_mem {scalar_t__ va; } ;
struct i40e_hw {int dummy; } ;
struct i40e_dcbx_config {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_LLDPDU_SIZE ;
 int I40E_SUCCESS ;
 int i40e_allocate_virt_mem (struct i40e_hw*,struct i40e_virt_mem*,int ) ;
 int i40e_aq_get_lldp_mib (struct i40e_hw*,int ,int ,void*,int ,int *,int *,int *) ;
 int i40e_free_virt_mem (struct i40e_hw*,struct i40e_virt_mem*) ;
 int i40e_lldp_to_dcb_config (int *,struct i40e_dcbx_config*) ;

enum i40e_status_code i40e_aq_get_dcb_config(struct i40e_hw *hw, u8 mib_type,
       u8 bridgetype,
       struct i40e_dcbx_config *dcbcfg)
{
 enum i40e_status_code ret = I40E_SUCCESS;
 struct i40e_virt_mem mem;
 u8 *lldpmib;


 ret = i40e_allocate_virt_mem(hw, &mem, I40E_LLDPDU_SIZE);
 if (ret)
  return ret;

 lldpmib = (u8 *)mem.va;
 ret = i40e_aq_get_lldp_mib(hw, bridgetype, mib_type,
       (void *)lldpmib, I40E_LLDPDU_SIZE,
       ((void*)0), ((void*)0), ((void*)0));
 if (ret)
  goto free_mem;


 ret = i40e_lldp_to_dcb_config(lldpmib, dcbcfg);

free_mem:
 i40e_free_virt_mem(hw, &mem);
 return ret;
}
