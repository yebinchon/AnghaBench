
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_hw {int flags; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK ;
 int I40E_RESOURCE_READ ;
 int I40E_SUCCESS ;
 int __i40e_read_nvm_word (struct i40e_hw*,int ,int *) ;
 int i40e_acquire_nvm (struct i40e_hw*,int ) ;
 int i40e_release_nvm (struct i40e_hw*) ;

enum i40e_status_code i40e_read_nvm_word(struct i40e_hw *hw, u16 offset,
      u16 *data)
{
 enum i40e_status_code ret_code = I40E_SUCCESS;

 if (hw->flags & I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK)
  ret_code = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);

 if (ret_code)
  return ret_code;
 ret_code = __i40e_read_nvm_word(hw, offset, data);

 if (hw->flags & I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK)
  i40e_release_nvm(hw);
 return ret_code;
}
