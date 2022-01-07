
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef int vm_memattr_t ;
typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ mr_start; scalar_t__ mr_size; } ;


 int LPTE_G ;
 int LPTE_I ;
 int LPTE_M ;
 int LPTE_W ;

 int VM_MEMATTR_DEFAULT ;





 TYPE_1__* pregions ;
 int pregions_sz ;

__attribute__((used)) static __inline uint64_t
moea64_calc_wimg(vm_paddr_t pa, vm_memattr_t ma)
{
 uint64_t pte_lo;
 int i;

 if (ma != VM_MEMATTR_DEFAULT) {
  switch (ma) {
  case 131:
   return (LPTE_I | LPTE_G);
  case 133:
   return (LPTE_M);
  case 129:
  case 130:
  case 132:
   return (LPTE_I);
  case 128:
   return (LPTE_W | LPTE_M);
  }
 }





 pte_lo = LPTE_I | LPTE_G;
 for (i = 0; i < pregions_sz; i++) {
  if ((pa >= pregions[i].mr_start) &&
      (pa < (pregions[i].mr_start + pregions[i].mr_size))) {
   pte_lo &= ~(LPTE_I | LPTE_G);
   pte_lo |= LPTE_M;
   break;
  }
 }

 return pte_lo;
}
