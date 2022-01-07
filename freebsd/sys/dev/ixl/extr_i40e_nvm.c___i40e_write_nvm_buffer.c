
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
typedef size_t u16 ;
struct i40e_hw {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef int __le16 ;


 int CPU_TO_LE16 (size_t) ;
 int DEBUGFUNC (char*) ;
 int FALSE ;
 int i40e_write_nvm_aq (struct i40e_hw*,int ,size_t,size_t,void*,int ) ;

enum i40e_status_code __i40e_write_nvm_buffer(struct i40e_hw *hw,
           u8 module_pointer, u32 offset,
           u16 words, void *data)
{
 __le16 *le_word_ptr = (__le16 *)data;
 u16 *word_ptr = (u16 *)data;
 u32 i = 0;

 DEBUGFUNC("i40e_write_nvm_buffer");

 for (i = 0; i < words; i++)
  le_word_ptr[i] = CPU_TO_LE16(word_ptr[i]);




 return i40e_write_nvm_aq(hw, module_pointer, offset, words,
     data, FALSE);
}
