
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef int vm_memattr_t ;
typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ mr_start; scalar_t__ mr_size; } ;


 int PTE_G ;
 int PTE_I ;
 int PTE_M ;
 int PTE_W ;

 int VM_MEMATTR_DEFAULT ;





 TYPE_1__* pregions ;
 int pregions_sz ;

__attribute__((used)) static __inline uint32_t
moea_calc_wimg(vm_paddr_t pa, vm_memattr_t ma)
{
 uint32_t pte_lo;
 int i;

 if (ma != VM_MEMATTR_DEFAULT) {
  switch (ma) {
  case 131:
   return (PTE_I | PTE_G);
  case 133:
   return (PTE_M);
  case 129:
  case 130:
  case 132:
   return (PTE_I);
  case 128:
   return (PTE_W | PTE_M);
  }
 }





 pte_lo = PTE_I | PTE_G;
 for (i = 0; i < pregions_sz; i++) {
  if ((pa >= pregions[i].mr_start) &&
      (pa < (pregions[i].mr_start + pregions[i].mr_size))) {
   pte_lo = PTE_M;
   break;
  }
 }

 return pte_lo;
}
