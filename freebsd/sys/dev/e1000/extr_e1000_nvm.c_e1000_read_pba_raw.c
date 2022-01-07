
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct e1000_pba {int* word; int* pba_block; } ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_PARAM ;
 scalar_t__ E1000_SUCCESS ;
 size_t NVM_PBA_OFFSET_0 ;
 size_t NVM_PBA_OFFSET_1 ;
 int NVM_PBA_PTR_GUARD ;
 scalar_t__ e1000_get_pba_block_size (struct e1000_hw*,int*,size_t,int*) ;
 scalar_t__ e1000_read_nvm (struct e1000_hw*,size_t,int,int*) ;
 int memcpy (int*,int*,int) ;

s32 e1000_read_pba_raw(struct e1000_hw *hw, u16 *eeprom_buf,
         u32 eeprom_buf_size, u16 max_pba_block_size,
         struct e1000_pba *pba)
{
 s32 ret_val;
 u16 pba_block_size;

 if (pba == ((void*)0))
  return -E1000_ERR_PARAM;

 if (eeprom_buf == ((void*)0)) {
  ret_val = e1000_read_nvm(hw, NVM_PBA_OFFSET_0, 2,
      &pba->word[0]);
  if (ret_val)
   return ret_val;
 } else {
  if (eeprom_buf_size > NVM_PBA_OFFSET_1) {
   pba->word[0] = eeprom_buf[NVM_PBA_OFFSET_0];
   pba->word[1] = eeprom_buf[NVM_PBA_OFFSET_1];
  } else {
   return -E1000_ERR_PARAM;
  }
 }

 if (pba->word[0] == NVM_PBA_PTR_GUARD) {
  if (pba->pba_block == ((void*)0))
   return -E1000_ERR_PARAM;

  ret_val = e1000_get_pba_block_size(hw, eeprom_buf,
         eeprom_buf_size,
         &pba_block_size);
  if (ret_val)
   return ret_val;

  if (pba_block_size > max_pba_block_size)
   return -E1000_ERR_PARAM;

  if (eeprom_buf == ((void*)0)) {
   ret_val = e1000_read_nvm(hw, pba->word[1],
       pba_block_size,
       pba->pba_block);
   if (ret_val)
    return ret_val;
  } else {
   if (eeprom_buf_size > (u32)(pba->word[1] +
           pba_block_size)) {
    memcpy(pba->pba_block,
           &eeprom_buf[pba->word[1]],
           pba_block_size * sizeof(u16));
   } else {
    return -E1000_ERR_PARAM;
   }
  }
 }

 return E1000_SUCCESS;
}
