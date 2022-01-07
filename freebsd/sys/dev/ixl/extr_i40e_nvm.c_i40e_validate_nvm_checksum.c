
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct i40e_hw {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int DEBUGFUNC (char*) ;
 int I40E_ERR_NVM_CHECKSUM ;
 int I40E_RESOURCE_READ ;
 int I40E_SR_SW_CHECKSUM_WORD ;
 int I40E_SUCCESS ;
 int __i40e_read_nvm_word (struct i40e_hw*,int ,scalar_t__*) ;
 int i40e_acquire_nvm (struct i40e_hw*,int ) ;
 int i40e_calc_nvm_checksum (struct i40e_hw*,scalar_t__*) ;
 int i40e_release_nvm (struct i40e_hw*) ;

enum i40e_status_code i40e_validate_nvm_checksum(struct i40e_hw *hw,
       u16 *checksum)
{
 enum i40e_status_code ret_code = I40E_SUCCESS;
 u16 checksum_sr = 0;
 u16 checksum_local = 0;

 DEBUGFUNC("i40e_validate_nvm_checksum");






 ret_code = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
 if (ret_code)
  return ret_code;
 ret_code = i40e_calc_nvm_checksum(hw, &checksum_local);
 __i40e_read_nvm_word(hw, I40E_SR_SW_CHECKSUM_WORD, &checksum_sr);
 i40e_release_nvm(hw);
 if (ret_code)
  return ret_code;




 if (checksum_local != checksum_sr)
  ret_code = I40E_ERR_NVM_CHECKSUM;


 if (checksum)
  *checksum = checksum_local;

 return ret_code;
}
