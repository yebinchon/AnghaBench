
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {int (* init_params ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {scalar_t__ word_size; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int ERROR_REPORT1 (int ,char*) ;
 scalar_t__ IXGBE_EEPROM_RW_ADDR_SHIFT ;
 scalar_t__ IXGBE_EEPROM_RW_REG_DATA ;
 scalar_t__ IXGBE_EEPROM_RW_REG_START ;
 int IXGBE_EERD ;
 int IXGBE_ERROR_ARGUMENT ;
 scalar_t__ IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_ERR_INVALID_ARGUMENT ;
 int IXGBE_NVM_POLL_READ ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 scalar_t__ ixgbe_poll_eerd_eewr_done (struct ixgbe_hw*,int ) ;
 int stub1 (struct ixgbe_hw*) ;

s32 ixgbe_read_eerd_buffer_generic(struct ixgbe_hw *hw, u16 offset,
       u16 words, u16 *data)
{
 u32 eerd;
 s32 status = IXGBE_SUCCESS;
 u32 i;

 DEBUGFUNC("ixgbe_read_eerd_buffer_generic");

 hw->eeprom.ops.init_params(hw);

 if (words == 0) {
  status = IXGBE_ERR_INVALID_ARGUMENT;
  ERROR_REPORT1(IXGBE_ERROR_ARGUMENT, "Invalid EEPROM words");
  goto out;
 }

 if (offset >= hw->eeprom.word_size) {
  status = IXGBE_ERR_EEPROM;
  ERROR_REPORT1(IXGBE_ERROR_ARGUMENT, "Invalid EEPROM offset");
  goto out;
 }

 for (i = 0; i < words; i++) {
  eerd = ((offset + i) << IXGBE_EEPROM_RW_ADDR_SHIFT) |
         IXGBE_EEPROM_RW_REG_START;

  IXGBE_WRITE_REG(hw, IXGBE_EERD, eerd);
  status = ixgbe_poll_eerd_eewr_done(hw, IXGBE_NVM_POLL_READ);

  if (status == IXGBE_SUCCESS) {
   data[i] = (IXGBE_READ_REG(hw, IXGBE_EERD) >>
       IXGBE_EEPROM_RW_REG_DATA);
  } else {
   DEBUGOUT("Eeprom read timed out\n");
   goto out;
  }
 }
out:
 return status;
}
