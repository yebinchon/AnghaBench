
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef int vm_memattr_t ;
typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ mr_start; scalar_t__ mr_size; } ;


 int MAS2_G ;
 int MAS2_I ;
 int MAS2_M ;
 int MAS2_W ;

 int VM_MEMATTR_DEFAULT ;





 int _TLB_ENTRY_IO ;
 int _TLB_ENTRY_MEM ;
 TYPE_1__* physmem_regions ;
 int physmem_regions_sz ;

__attribute__((used)) static __inline uint32_t
tlb_calc_wimg(vm_paddr_t pa, vm_memattr_t ma)
{
 uint32_t attrib;
 int i;

 if (ma != VM_MEMATTR_DEFAULT) {
  switch (ma) {
  case 131:
   return (MAS2_I | MAS2_G);
  case 129:
  case 130:
  case 132:
   return (MAS2_I);
  case 128:
   return (MAS2_W | MAS2_M);
  case 133:
   return (MAS2_M);
  }
 }





 attrib = _TLB_ENTRY_IO;
 for (i = 0; i < physmem_regions_sz; i++) {
  if ((pa >= physmem_regions[i].mr_start) &&
      (pa < (physmem_regions[i].mr_start +
       physmem_regions[i].mr_size))) {
   attrib = _TLB_ENTRY_MEM;
   break;
  }
 }

 return (attrib);
}
