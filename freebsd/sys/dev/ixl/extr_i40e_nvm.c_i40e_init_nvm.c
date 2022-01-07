
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i40e_nvm_info {int sr_size; int blank_nvm_mode; int timeout; } ;
struct i40e_hw {struct i40e_nvm_info nvm; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int BIT (int) ;
 int DEBUGFUNC (char*) ;
 int FALSE ;
 int I40E_DEBUG_NVM ;
 int I40E_ERR_NVM_BLANK_MODE ;
 int I40E_GLNVM_FLA ;
 int I40E_GLNVM_FLA_LOCKED_MASK ;
 int I40E_GLNVM_GENS ;
 int I40E_GLNVM_GENS_SR_SIZE_MASK ;
 int I40E_GLNVM_GENS_SR_SIZE_SHIFT ;
 int I40E_MAX_NVM_TIMEOUT ;
 int I40E_SR_WORDS_IN_1KB ;
 int I40E_SUCCESS ;
 int TRUE ;
 int i40e_debug (struct i40e_hw*,int ,char*) ;
 int rd32 (struct i40e_hw*,int ) ;

enum i40e_status_code i40e_init_nvm(struct i40e_hw *hw)
{
 struct i40e_nvm_info *nvm = &hw->nvm;
 enum i40e_status_code ret_code = I40E_SUCCESS;
 u32 fla, gens;
 u8 sr_size;

 DEBUGFUNC("i40e_init_nvm");




 gens = rd32(hw, I40E_GLNVM_GENS);
 sr_size = ((gens & I40E_GLNVM_GENS_SR_SIZE_MASK) >>
      I40E_GLNVM_GENS_SR_SIZE_SHIFT);

 nvm->sr_size = BIT(sr_size) * I40E_SR_WORDS_IN_1KB;


 fla = rd32(hw, I40E_GLNVM_FLA);
 if (fla & I40E_GLNVM_FLA_LOCKED_MASK) {

  nvm->timeout = I40E_MAX_NVM_TIMEOUT;
  nvm->blank_nvm_mode = FALSE;
 } else {
  nvm->blank_nvm_mode = TRUE;
  ret_code = I40E_ERR_NVM_BLANK_MODE;
  i40e_debug(hw, I40E_DEBUG_NVM, "NVM init error: unsupported blank mode.\n");
 }

 return ret_code;
}
