
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addresses_stored; } ;


 int BKTR_MEM_MAX_DEVICES ;
 TYPE_1__* memory_list ;
 int printf (char*,int) ;

int
bktr_has_stored_addresses(int unit)
{

 if (unit < 0 || unit >= BKTR_MEM_MAX_DEVICES) {
  printf("bktr_mem: Unit number %d invalid\n", unit);
  return 0;
 }

 return memory_list[unit].addresses_stored;
}
