
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
 scalar_t__ e1000_write_nvm (struct e1000_hw*,size_t,int,int*) ;
 int memcpy (int*,int*,int) ;

s32 e1000_write_pba_raw(struct e1000_hw *hw, u16 *eeprom_buf,
   u32 eeprom_buf_size, struct e1000_pba *pba)
{
 s32 ret_val;

 if (pba == ((void*)0))
  return -E1000_ERR_PARAM;

 if (eeprom_buf == ((void*)0)) {
  ret_val = e1000_write_nvm(hw, NVM_PBA_OFFSET_0, 2,
       &pba->word[0]);
  if (ret_val)
   return ret_val;
 } else {
  if (eeprom_buf_size > NVM_PBA_OFFSET_1) {
   eeprom_buf[NVM_PBA_OFFSET_0] = pba->word[0];
   eeprom_buf[NVM_PBA_OFFSET_1] = pba->word[1];
  } else {
   return -E1000_ERR_PARAM;
  }
 }

 if (pba->word[0] == NVM_PBA_PTR_GUARD) {
  if (pba->pba_block == ((void*)0))
   return -E1000_ERR_PARAM;

  if (eeprom_buf == ((void*)0)) {
   ret_val = e1000_write_nvm(hw, pba->word[1],
        pba->pba_block[0],
        pba->pba_block);
   if (ret_val)
    return ret_val;
  } else {
   if (eeprom_buf_size > (u32)(pba->word[1] +
           pba->pba_block[0])) {
    memcpy(&eeprom_buf[pba->word[1]],
           pba->pba_block,
           pba->pba_block[0] * sizeof(u16));
   } else {
    return -E1000_ERR_PARAM;
   }
  }
 }

 return E1000_SUCCESS;
}
