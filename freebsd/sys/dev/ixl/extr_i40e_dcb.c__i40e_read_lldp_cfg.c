
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_lldp_variables {int dummy; } ;
struct i40e_hw {int dummy; } ;
typedef int raw_mem ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef struct i40e_lldp_variables __le16 ;


 int I40E_PTR_TYPE ;
 int I40E_RESOURCE_READ ;
 int I40E_SUCCESS ;
 int LE16_TO_CPU (struct i40e_lldp_variables) ;
 int TRUE ;
 int i40e_acquire_nvm (struct i40e_hw*,int ) ;
 int i40e_aq_read_nvm (struct i40e_hw*,int,int,int,struct i40e_lldp_variables*,int ,int *) ;
 int i40e_release_nvm (struct i40e_hw*) ;

__attribute__((used)) static enum i40e_status_code _i40e_read_lldp_cfg(struct i40e_hw *hw,
       struct i40e_lldp_variables *lldp_cfg,
       u8 module, u32 word_offset)
{
 u32 address, offset = (2 * word_offset);
 enum i40e_status_code ret;
 __le16 raw_mem;
 u16 mem;

 ret = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
 if (ret != I40E_SUCCESS)
  return ret;

 ret = i40e_aq_read_nvm(hw, 0x0, module * 2, sizeof(raw_mem), &raw_mem,
          TRUE, ((void*)0));
 i40e_release_nvm(hw);
 if (ret != I40E_SUCCESS)
  return ret;

 mem = LE16_TO_CPU(raw_mem);



 if (mem & I40E_PTR_TYPE)
  address = (0x7FFF & mem) * 4096;
 else
  address = (0x7FFF & mem) * 2;

 ret = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
 if (ret != I40E_SUCCESS)
  goto err_lldp_cfg;

 ret = i40e_aq_read_nvm(hw, module, offset, sizeof(raw_mem), &raw_mem,
          TRUE, ((void*)0));
 i40e_release_nvm(hw);
 if (ret != I40E_SUCCESS)
  return ret;

 mem = LE16_TO_CPU(raw_mem);
 offset = mem + word_offset;
 offset *= 2;

 ret = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
 if (ret != I40E_SUCCESS)
  goto err_lldp_cfg;

 ret = i40e_aq_read_nvm(hw, 0, address + offset,
          sizeof(struct i40e_lldp_variables), lldp_cfg,
          TRUE, ((void*)0));
 i40e_release_nvm(hw);

err_lldp_cfg:
 return ret;
}
