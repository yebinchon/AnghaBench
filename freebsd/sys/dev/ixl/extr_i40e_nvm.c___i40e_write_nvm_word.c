
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef int __le16 ;


 int CPU_TO_LE16 (int ) ;
 int DEBUGFUNC (char*) ;
 int FALSE ;
 int i40e_write_nvm_aq (struct i40e_hw*,int,int ,int,void*,int ) ;

enum i40e_status_code __i40e_write_nvm_word(struct i40e_hw *hw, u32 offset,
         void *data)
{
 DEBUGFUNC("i40e_write_nvm_word");

 *((__le16 *)data) = CPU_TO_LE16(*((u16 *)data));


 return i40e_write_nvm_aq(hw, 0x00, offset, 1, data, FALSE);
}
