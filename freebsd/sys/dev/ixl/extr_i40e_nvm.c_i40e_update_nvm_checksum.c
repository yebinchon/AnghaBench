
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_hw {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef int __le16 ;


 int CPU_TO_LE16 (int ) ;
 int DEBUGFUNC (char*) ;
 int I40E_SR_SW_CHECKSUM_WORD ;
 int I40E_SUCCESS ;
 int TRUE ;
 int i40e_calc_nvm_checksum (struct i40e_hw*,int *) ;
 int i40e_write_nvm_aq (struct i40e_hw*,int,int ,int,int *,int ) ;

enum i40e_status_code i40e_update_nvm_checksum(struct i40e_hw *hw)
{
 enum i40e_status_code ret_code = I40E_SUCCESS;
 u16 checksum;
 __le16 le_sum;

 DEBUGFUNC("i40e_update_nvm_checksum");

 ret_code = i40e_calc_nvm_checksum(hw, &checksum);
 le_sum = CPU_TO_LE16(checksum);
 if (ret_code == I40E_SUCCESS)
  ret_code = i40e_write_nvm_aq(hw, 0x00, I40E_SR_SW_CHECKSUM_WORD,
          1, &le_sum, TRUE);

 return ret_code;
}
