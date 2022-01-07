
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_memattr_t ;
struct TYPE_4__ {int mas1; scalar_t__ virt; scalar_t__ size; int mas2; int phys; } ;
typedef TYPE_1__ tlb_entry_t ;
typedef int pte_t ;
typedef int mmu_t ;


 scalar_t__ DMAP_BASE_ADDRESS ;
 scalar_t__ DMAP_MAX_ADDRESS ;
 int EINVAL ;
 int MAS1_VALID ;
 int MAS2_WIMGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int PTE_ISVALID (int*) ;
 int PTE_MAS2_MASK ;
 int PTE_MAS2_SHIFT ;
 int PTE_PA (int*) ;
 int TLB1_ENTRIES ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 scalar_t__ VM_MAX_KERNEL_ADDRESS ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int kernel_pmap ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int* pte_find (int ,int ,scalar_t__) ;
 int tlb0_flush_entry (scalar_t__) ;
 scalar_t__ tlb1_map_base ;
 int tlb1_read_entry (TYPE_1__*,int) ;
 int tlb1_write_entry (TYPE_1__*,int) ;
 int tlb_calc_wimg (int ,int ) ;
 int tlb_miss_lock () ;
 int tlb_miss_unlock () ;
 int tlbivax_mutex ;
 scalar_t__ trunc_page (scalar_t__) ;

__attribute__((used)) static int
mmu_booke_change_attr(mmu_t mmu, vm_offset_t addr, vm_size_t sz,
    vm_memattr_t mode)
{
 vm_offset_t va;
 pte_t *pte;
 int i, j;
 tlb_entry_t e;

 addr = trunc_page(addr);






 if (addr <= VM_MAXUSER_ADDRESS ||




     (addr >= tlb1_map_base && addr < VM_MIN_KERNEL_ADDRESS) ||

     (addr > VM_MAX_KERNEL_ADDRESS))
  return (EINVAL);


 for (i = 0; i < TLB1_ENTRIES; i++) {
  tlb1_read_entry(&e, i);
  if (!(e.mas1 & MAS1_VALID))
   continue;
  if (addr >= e.virt && addr < e.virt + e.size)
   break;
 }
 if (i < TLB1_ENTRIES) {


  for (j = i, va = addr; va < addr + sz; va += e.size, j++) {
   tlb1_read_entry(&e, j);
   if (va != e.virt || (sz - (va - addr) < e.size))
    return (EINVAL);
  }
  for (va = addr; va < addr + sz; va += e.size, i++) {
   tlb1_read_entry(&e, i);
   e.mas2 &= ~MAS2_WIMGE_MASK;
   e.mas2 |= tlb_calc_wimg(e.phys, mode);





   tlb1_write_entry(&e, i);
  }
  return (0);
 }



 for (va = addr; va < addr + sz; va += PAGE_SIZE) {
  pte = pte_find(mmu, kernel_pmap, va);
  if (pte == ((void*)0) || !PTE_ISVALID(pte))
   return (EINVAL);
 }

 mtx_lock_spin(&tlbivax_mutex);
 tlb_miss_lock();
 for (va = addr; va < addr + sz; va += PAGE_SIZE) {
  pte = pte_find(mmu, kernel_pmap, va);
  *pte &= ~(PTE_MAS2_MASK << PTE_MAS2_SHIFT);
  *pte |= tlb_calc_wimg(PTE_PA(pte), mode) << PTE_MAS2_SHIFT;
  tlb0_flush_entry(va);
 }
 tlb_miss_unlock();
 mtx_unlock_spin(&tlbivax_mutex);

 return (0);
}
