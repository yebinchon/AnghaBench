
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ sr_size; } ;
struct i40e_hw {TYPE_1__ nvm; int nvm_wb_desc; } ;
struct i40e_asq_cmd_details {int * wb_desc; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef int cmd_details ;


 int DEBUGFUNC (char*) ;
 int I40E_DEBUG_NVM ;
 int I40E_ERR_NVM ;
 scalar_t__ I40E_SR_SECTOR_SIZE_IN_WORDS ;
 int i40e_aq_read_nvm (struct i40e_hw*,int ,int,int,void*,int,struct i40e_asq_cmd_details*) ;
 int i40e_debug (struct i40e_hw*,int ,char*,scalar_t__,scalar_t__) ;
 int memset (struct i40e_asq_cmd_details*,int ,int) ;

__attribute__((used)) static enum i40e_status_code i40e_read_nvm_aq(struct i40e_hw *hw,
           u8 module_pointer, u32 offset,
           u16 words, void *data,
           bool last_command)
{
 enum i40e_status_code ret_code = I40E_ERR_NVM;
 struct i40e_asq_cmd_details cmd_details;

 DEBUGFUNC("i40e_read_nvm_aq");

 memset(&cmd_details, 0, sizeof(cmd_details));
 cmd_details.wb_desc = &hw->nvm_wb_desc;






 if ((offset + words) > hw->nvm.sr_size)
  i40e_debug(hw, I40E_DEBUG_NVM,
      "NVM write error: offset %d beyond Shadow RAM limit %d\n",
      (offset + words), hw->nvm.sr_size);
 else if (words > I40E_SR_SECTOR_SIZE_IN_WORDS)

  i40e_debug(hw, I40E_DEBUG_NVM,
      "NVM write fail error: tried to write %d words, limit is %d.\n",
      words, I40E_SR_SECTOR_SIZE_IN_WORDS);
 else if (((offset + (words - 1)) / I40E_SR_SECTOR_SIZE_IN_WORDS)
   != (offset / I40E_SR_SECTOR_SIZE_IN_WORDS))

  i40e_debug(hw, I40E_DEBUG_NVM,
      "NVM write error: cannot spread over two sectors in a single write offset=%d words=%d\n",
      offset, words);
 else
  ret_code = i40e_aq_read_nvm(hw, module_pointer,
         2 * offset,
         2 * words,
         data, last_command, &cmd_details);

 return ret_code;
}
