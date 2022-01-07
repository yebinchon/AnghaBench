
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint16_t ;
typedef int int16_t ;


 uintptr_t VM_MAXUSER_ADDRESS ;
 scalar_t__ cp_slow0 (int ,int,int,int ,int*) ;
 scalar_t__ fast_copyout ;
 int pmap_get_kcr3 () ;
 scalar_t__ suword16_fast_tramp (void volatile*,int,int ) ;
 int suword16_slow0 ;

int
suword16(volatile void *base, int word)
{

 if ((uintptr_t)base + sizeof(uint16_t) < (uintptr_t)base ||
     (uintptr_t)base + sizeof(uint16_t) > VM_MAXUSER_ADDRESS)
  return (-1);
 if (fast_copyout && suword16_fast_tramp(base, word, pmap_get_kcr3())
     == 0)
  return (0);
 return (cp_slow0((vm_offset_t)base, sizeof(int16_t), 1,
     suword16_slow0, &word) != 0 ? -1 : 0);
}
