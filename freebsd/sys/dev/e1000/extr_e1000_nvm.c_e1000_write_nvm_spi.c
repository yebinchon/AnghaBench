
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int (* release ) (struct e1000_hw*) ;int (* acquire ) (struct e1000_hw*) ;} ;
struct e1000_nvm_info {scalar_t__ word_size; int opcode_bits; int address_bits; scalar_t__ page_size; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_ERR_NVM ;
 scalar_t__ NVM_A8_OPCODE_SPI ;
 scalar_t__ NVM_WREN_OPCODE_SPI ;
 scalar_t__ NVM_WRITE_OPCODE_SPI ;
 int e1000_ready_nvm_eeprom (struct e1000_hw*) ;
 int e1000_shift_out_eec_bits (struct e1000_hw*,scalar_t__,int) ;
 int e1000_standby_nvm (struct e1000_hw*) ;
 int msec_delay (int) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;

s32 e1000_write_nvm_spi(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 s32 ret_val = -E1000_ERR_NVM;
 u16 widx = 0;

 DEBUGFUNC("e1000_write_nvm_spi");




 if ((offset >= nvm->word_size) || (words > (nvm->word_size - offset)) ||
     (words == 0)) {
  DEBUGOUT("nvm parameter(s) out of bounds\n");
  return -E1000_ERR_NVM;
 }

 while (widx < words) {
  u8 write_opcode = NVM_WRITE_OPCODE_SPI;

  ret_val = nvm->ops.acquire(hw);
  if (ret_val)
   return ret_val;

  ret_val = e1000_ready_nvm_eeprom(hw);
  if (ret_val) {
   nvm->ops.release(hw);
   return ret_val;
  }

  e1000_standby_nvm(hw);


  e1000_shift_out_eec_bits(hw, NVM_WREN_OPCODE_SPI,
      nvm->opcode_bits);

  e1000_standby_nvm(hw);




  if ((nvm->address_bits == 8) && (offset >= 128))
   write_opcode |= NVM_A8_OPCODE_SPI;


  e1000_shift_out_eec_bits(hw, write_opcode, nvm->opcode_bits);
  e1000_shift_out_eec_bits(hw, (u16)((offset + widx) * 2),
      nvm->address_bits);


  while (widx < words) {
   u16 word_out = data[widx];
   word_out = (word_out >> 8) | (word_out << 8);
   e1000_shift_out_eec_bits(hw, word_out, 16);
   widx++;

   if ((((offset + widx) * 2) % nvm->page_size) == 0) {
    e1000_standby_nvm(hw);
    break;
   }
  }
  msec_delay(10);
  nvm->ops.release(hw);
 }

 return ret_val;
}
