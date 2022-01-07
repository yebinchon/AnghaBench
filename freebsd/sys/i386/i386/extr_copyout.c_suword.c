
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef int vm_offset_t ;


 uintptr_t VM_MAXUSER_ADDRESS ;
 scalar_t__ cp_slow0 (int ,int,int,int ,long*) ;
 scalar_t__ fast_copyout ;
 int pmap_get_kcr3 () ;
 scalar_t__ suword_fast_tramp (void volatile*,long,int ) ;
 int suword_slow0 ;

int
suword(volatile void *base, long word)
{

 if ((uintptr_t)base + sizeof(word) < (uintptr_t)base ||
     (uintptr_t)base + sizeof(word) > VM_MAXUSER_ADDRESS)
  return (-1);
 if (fast_copyout && suword_fast_tramp(base, word, pmap_get_kcr3()) == 0)
  return (0);
 return (cp_slow0((vm_offset_t)base, sizeof(long), 1,
     suword_slow0, &word) != 0 ? -1 : 0);
}
