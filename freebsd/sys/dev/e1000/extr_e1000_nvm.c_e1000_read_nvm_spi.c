
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct e1000_nvm_info {scalar_t__ word_size; int address_bits; int opcode_bits; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_ERR_NVM ;
 scalar_t__ NVM_A8_OPCODE_SPI ;
 scalar_t__ NVM_READ_OPCODE_SPI ;
 scalar_t__ e1000_ready_nvm_eeprom (struct e1000_hw*) ;
 scalar_t__ e1000_shift_in_eec_bits (struct e1000_hw*,int) ;
 int e1000_shift_out_eec_bits (struct e1000_hw*,scalar_t__,int) ;
 int e1000_standby_nvm (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

s32 e1000_read_nvm_spi(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 i = 0;
 s32 ret_val;
 u16 word_in;
 u8 read_opcode = NVM_READ_OPCODE_SPI;

 DEBUGFUNC("e1000_read_nvm_spi");




 if ((offset >= nvm->word_size) || (words > (nvm->word_size - offset)) ||
     (words == 0)) {
  DEBUGOUT("nvm parameter(s) out of bounds\n");
  return -E1000_ERR_NVM;
 }

 ret_val = nvm->ops.acquire(hw);
 if (ret_val)
  return ret_val;

 ret_val = e1000_ready_nvm_eeprom(hw);
 if (ret_val)
  goto release;

 e1000_standby_nvm(hw);

 if ((nvm->address_bits == 8) && (offset >= 128))
  read_opcode |= NVM_A8_OPCODE_SPI;


 e1000_shift_out_eec_bits(hw, read_opcode, nvm->opcode_bits);
 e1000_shift_out_eec_bits(hw, (u16)(offset*2), nvm->address_bits);





 for (i = 0; i < words; i++) {
  word_in = e1000_shift_in_eec_bits(hw, 16);
  data[i] = (word_in >> 8) | (word_in << 8);
 }

release:
 nvm->ops.release(hw);

 return ret_val;
}
