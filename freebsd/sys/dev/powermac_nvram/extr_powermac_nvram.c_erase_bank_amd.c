
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 unsigned int NVRAM_SIZE ;
 int OUTB_DELAY (int*,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ wait_operation_complete_amd (int*) ;

__attribute__((used)) static int
erase_bank_amd(device_t dev, uint8_t *bank)
{
 unsigned int i;


 OUTB_DELAY(bank + 0x555, 0xaa);

 OUTB_DELAY(bank + 0x2aa, 0x55);


 OUTB_DELAY(bank + 0x555, 0x80);
 OUTB_DELAY(bank + 0x555, 0xaa);
 OUTB_DELAY(bank + 0x2aa, 0x55);
 OUTB_DELAY(bank, 0x30);

 if (wait_operation_complete_amd(bank) != 0) {
  device_printf(dev, "flash erase timeout\n");
  return -1;
 }


 OUTB_DELAY(bank, 0xf0);

 for (i = 0; i < NVRAM_SIZE; i++) {
  if (bank[i] != 0xff) {
   device_printf(dev, "flash erase has failed\n");
   return -1;
  }
 }
 return 0;
}
