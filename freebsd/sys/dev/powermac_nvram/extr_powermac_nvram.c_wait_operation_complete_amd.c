
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int inb (int *) ;

__attribute__((used)) static int
wait_operation_complete_amd(uint8_t *bank)
{
 int i;

 for (i = 1000000; i != 0; i--)
  if ((inb(bank) ^ inb(bank)) == 0)
   return 0;
 return -1;
}
