
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 unsigned int NVRAM_SIZE ;
 int SM_FLASH_CMD_CLEAR_STATUS ;
 int SM_FLASH_CMD_ERASE_CONFIRM ;
 int SM_FLASH_CMD_ERASE_SETUP ;
 int SM_FLASH_CMD_RESET ;
 int device_printf (int ,char*) ;
 int outb (int*,int ) ;
 scalar_t__ wait_operation_complete_sm (int*) ;

__attribute__((used)) static int
erase_bank_sm(device_t dev, uint8_t *bank)
{
 unsigned int i;

 outb(bank, SM_FLASH_CMD_ERASE_SETUP);
 outb(bank, SM_FLASH_CMD_ERASE_CONFIRM);

 if (wait_operation_complete_sm(bank) != 0) {
  device_printf(dev, "flash erase timeout\n");
  return (-1);
 }

 outb(bank, SM_FLASH_CMD_CLEAR_STATUS);
 outb(bank, SM_FLASH_CMD_RESET);

 for (i = 0; i < NVRAM_SIZE; i++) {
  if (bank[i] != 0xff) {
   device_printf(dev, "flash write has failed\n");
   return (-1);
  }
 }
 return (0);
}
