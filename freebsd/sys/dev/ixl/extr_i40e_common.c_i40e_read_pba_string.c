
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int I40E_ERR_PARAM ;
 int I40E_SR_PBA_BLOCK_PTR ;
 int I40E_SR_PBA_FLAGS ;
 int I40E_SUCCESS ;
 int i40e_read_nvm_word (struct i40e_hw*,int,int*) ;

enum i40e_status_code i40e_read_pba_string(struct i40e_hw *hw, u8 *pba_num,
         u32 pba_num_size)
{
 enum i40e_status_code status = I40E_SUCCESS;
 u16 pba_word = 0;
 u16 pba_size = 0;
 u16 pba_ptr = 0;
 u16 i = 0;

 status = i40e_read_nvm_word(hw, I40E_SR_PBA_FLAGS, &pba_word);
 if ((status != I40E_SUCCESS) || (pba_word != 0xFAFA)) {
  DEBUGOUT("Failed to read PBA flags or flag is invalid.\n");
  return status;
 }

 status = i40e_read_nvm_word(hw, I40E_SR_PBA_BLOCK_PTR, &pba_ptr);
 if (status != I40E_SUCCESS) {
  DEBUGOUT("Failed to read PBA Block pointer.\n");
  return status;
 }

 status = i40e_read_nvm_word(hw, pba_ptr, &pba_size);
 if (status != I40E_SUCCESS) {
  DEBUGOUT("Failed to read PBA Block size.\n");
  return status;
 }




 pba_size--;
 if (pba_num_size < (((u32)pba_size * 2) + 1)) {
  DEBUGOUT("Buffer to small for PBA data.\n");
  return I40E_ERR_PARAM;
 }

 for (i = 0; i < pba_size; i++) {
  status = i40e_read_nvm_word(hw, (pba_ptr + 1) + i, &pba_word);
  if (status != I40E_SUCCESS) {
   DEBUGOUT1("Failed to read PBA Block word %d.\n", i);
   return status;
  }

  pba_num[(i * 2)] = (pba_word >> 8) & 0xFF;
  pba_num[(i * 2) + 1] = pba_word & 0xFF;
 }
 pba_num[(pba_size * 2)] = '\0';

 return status;
}
