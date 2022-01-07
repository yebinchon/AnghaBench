
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 scalar_t__ memguard_base ;
 scalar_t__ memguard_mapsize ;

int
is_memguard_addr(void *addr)
{
 vm_offset_t a = (vm_offset_t)(uintptr_t)addr;

 return (a >= memguard_base && a < memguard_base + memguard_mapsize);
}
