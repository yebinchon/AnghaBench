
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int address_bits; } ;
struct ixgbe_hw {TYPE_1__ eeprom; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_EEPROM_A8_OPCODE_SPI ;
 int IXGBE_EEPROM_OPCODE_BITS ;
 int IXGBE_EEPROM_READ_OPCODE_SPI ;
 scalar_t__ IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ ixgbe_acquire_eeprom (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_ready_eeprom (struct ixgbe_hw*) ;
 int ixgbe_release_eeprom (struct ixgbe_hw*) ;
 int ixgbe_shift_in_eeprom_bits (struct ixgbe_hw*,int) ;
 int ixgbe_shift_out_eeprom_bits (struct ixgbe_hw*,int,int) ;
 int ixgbe_standby_eeprom (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_read_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
          u16 words, u16 *data)
{
 s32 status;
 u16 word_in;
 u8 read_opcode = IXGBE_EEPROM_READ_OPCODE_SPI;
 u16 i;

 DEBUGFUNC("ixgbe_read_eeprom_buffer_bit_bang");


 status = ixgbe_acquire_eeprom(hw);

 if (status == IXGBE_SUCCESS) {
  if (ixgbe_ready_eeprom(hw) != IXGBE_SUCCESS) {
   ixgbe_release_eeprom(hw);
   status = IXGBE_ERR_EEPROM;
  }
 }

 if (status == IXGBE_SUCCESS) {
  for (i = 0; i < words; i++) {
   ixgbe_standby_eeprom(hw);




   if ((hw->eeprom.address_bits == 8) &&
       ((offset + i) >= 128))
    read_opcode |= IXGBE_EEPROM_A8_OPCODE_SPI;


   ixgbe_shift_out_eeprom_bits(hw, read_opcode,
          IXGBE_EEPROM_OPCODE_BITS);
   ixgbe_shift_out_eeprom_bits(hw, (u16)((offset + i) * 2),
          hw->eeprom.address_bits);


   word_in = ixgbe_shift_in_eeprom_bits(hw, 16);
   data[i] = (word_in >> 8) | (word_in << 8);
  }


  ixgbe_release_eeprom(hw);
 }

 return status;
}
