
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_eeprom_info {scalar_t__ type; int semaphore_delay; int word_size; } ;
struct ixgbe_hw {struct ixgbe_eeprom_info eeprom; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT2 (char*,scalar_t__,int) ;
 int IXGBE_EEC ;
 int IXGBE_EEC_SIZE ;
 int IXGBE_EEC_SIZE_SHIFT ;
 int IXGBE_EEPROM_WORD_SIZE_SHIFT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 scalar_t__ ixgbe_eeprom_uninitialized ;
 scalar_t__ ixgbe_flash ;

s32 ixgbe_init_eeprom_params_X550(struct ixgbe_hw *hw)
{
 struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
 u32 eec;
 u16 eeprom_size;

 DEBUGFUNC("ixgbe_init_eeprom_params_X550");

 if (eeprom->type == ixgbe_eeprom_uninitialized) {
  eeprom->semaphore_delay = 10;
  eeprom->type = ixgbe_flash;

  eec = IXGBE_READ_REG(hw, IXGBE_EEC);
  eeprom_size = (u16)((eec & IXGBE_EEC_SIZE) >>
        IXGBE_EEC_SIZE_SHIFT);
  eeprom->word_size = 1 << (eeprom_size +
       IXGBE_EEPROM_WORD_SIZE_SHIFT);

  DEBUGOUT2("Eeprom params: type = %d, size = %d\n",
     eeprom->type, eeprom->word_size);
 }

 return IXGBE_SUCCESS;
}
