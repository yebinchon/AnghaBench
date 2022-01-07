
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint8_t ;
typedef int u_char ;


 uintptr_t VM_MAXUSER_ADDRESS ;
 scalar_t__ cp_slow0 (int ,int,int,int ,int*) ;
 scalar_t__ fast_copyout ;
 int pmap_get_kcr3 () ;
 scalar_t__ subyte_fast_tramp (void volatile*,int,int ) ;
 int subyte_slow0 ;

int
subyte(volatile void *base, int byte)
{

 if ((uintptr_t)base + sizeof(uint8_t) < (uintptr_t)base ||
     (uintptr_t)base + sizeof(uint8_t) > VM_MAXUSER_ADDRESS)
  return (-1);
 if (fast_copyout && subyte_fast_tramp(base, byte, pmap_get_kcr3()) == 0)
  return (0);
 return (cp_slow0((vm_offset_t)base, sizeof(u_char), 1, subyte_slow0,
     &byte) != 0 ? -1 : 0);
}
