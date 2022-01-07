
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_hw {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef int __le16 ;


 int DEBUGFUNC (char*) ;
 int I40E_ERR_TIMEOUT ;
 int LE16_TO_CPU (int ) ;
 int TRUE ;
 int i40e_read_nvm_aq (struct i40e_hw*,int,int ,int,int *,int ) ;

__attribute__((used)) static enum i40e_status_code i40e_read_nvm_word_aq(struct i40e_hw *hw, u16 offset,
         u16 *data)
{
 enum i40e_status_code ret_code = I40E_ERR_TIMEOUT;

 DEBUGFUNC("i40e_read_nvm_word_aq");

 ret_code = i40e_read_nvm_aq(hw, 0x0, offset, 1, data, TRUE);
 *data = LE16_TO_CPU(*(__le16 *)data);

 return ret_code;
}
