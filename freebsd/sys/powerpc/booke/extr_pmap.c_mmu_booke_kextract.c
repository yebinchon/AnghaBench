
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
struct TYPE_3__ {int mas1; scalar_t__ virt; scalar_t__ size; scalar_t__ phys; } ;
typedef TYPE_1__ tlb_entry_t ;
typedef int mmu_t ;


 scalar_t__ DMAP_BASE_ADDRESS ;
 scalar_t__ DMAP_MAX_ADDRESS ;
 scalar_t__ DMAP_TO_PHYS (scalar_t__) ;
 int MAS1_VALID ;
 int TLB1_ENTRIES ;
 scalar_t__ VM_MAX_KERNEL_ADDRESS ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int kernel_pmap ;
 scalar_t__ pte_vatopa (int ,int ,scalar_t__) ;
 int tlb1_read_entry (TYPE_1__*,int) ;

__attribute__((used)) static vm_paddr_t
mmu_booke_kextract(mmu_t mmu, vm_offset_t va)
{
 tlb_entry_t e;
 vm_paddr_t p = 0;
 int i;






 if (va >= VM_MIN_KERNEL_ADDRESS && va <= VM_MAX_KERNEL_ADDRESS)
  p = pte_vatopa(mmu, kernel_pmap, va);

 if (p == 0) {

  for (i = 0; i < TLB1_ENTRIES; i++) {
   tlb1_read_entry(&e, i);
   if (!(e.mas1 & MAS1_VALID))
    continue;
   if (va >= e.virt && va < e.virt + e.size)
    return (e.phys + (va - e.virt));
  }
 }

 return (p);
}
