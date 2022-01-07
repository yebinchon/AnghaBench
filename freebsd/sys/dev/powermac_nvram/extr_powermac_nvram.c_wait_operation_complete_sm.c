
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SM_FLASH_CMD_READ_STATUS ;
 int SM_FLASH_STATUS_DONE ;
 int inb (int *) ;
 int outb (int *,int ) ;

__attribute__((used)) static int
wait_operation_complete_sm(uint8_t *bank)
{
 int i;

 for (i = 1000000; i != 0; i--) {
  outb(bank, SM_FLASH_CMD_READ_STATUS);
  if (inb(bank) & SM_FLASH_STATUS_DONE)
   return (0);
 }
 return (-1);
}
