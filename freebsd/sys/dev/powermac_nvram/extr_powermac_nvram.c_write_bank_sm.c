
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int device_t ;


 unsigned int NVRAM_SIZE ;
 int OUTB_DELAY (scalar_t__*,int ) ;
 scalar_t__ SM_FLASH_CMD_CLEAR_STATUS ;
 scalar_t__ SM_FLASH_CMD_RESET ;
 int SM_FLASH_CMD_WRITE_SETUP ;
 int device_printf (int ,char*) ;
 int outb (scalar_t__*,scalar_t__) ;
 scalar_t__ wait_operation_complete_sm (scalar_t__*) ;

__attribute__((used)) static int
write_bank_sm(device_t dev, uint8_t *bank, uint8_t *data)
{
 unsigned int i;

 for (i = 0; i < NVRAM_SIZE; i++) {
  OUTB_DELAY(bank + i, SM_FLASH_CMD_WRITE_SETUP);
  outb(bank + i, data[i]);
  if (wait_operation_complete_sm(bank) != 0) {
   device_printf(dev, "flash write error/timeout\n");
   break;
  }
 }

 outb(bank, SM_FLASH_CMD_CLEAR_STATUS);
 outb(bank, SM_FLASH_CMD_RESET);

 for (i = 0; i < NVRAM_SIZE; i++) {
  if (bank[i] != data[i]) {
   device_printf(dev, "flash write has failed\n");
   return (-1);
  }
 }
 return (0);
}
