
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int uint64_t ;
struct TYPE_3__ {int prot; int pa; } ;
struct pvo_entry {int pvo_vaddr; TYPE_1__ pvo_pte; } ;
typedef int register_t ;
typedef int mmu_t ;
struct TYPE_4__ {int mr_start; int mr_size; } ;


 int DISABLE_TRANS (int ) ;
 int DMAP_BASE_ADDRESS ;
 int ENABLE_TRANS (int ) ;
 int EXC_LAST ;
 int EXC_RSVD ;
 int LPTE_G ;
 int LPTE_M ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int PHYS_TO_DMAP (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PVO_LARGE ;
 int PVO_WIRED ;
 int TUNABLE_INT_FETCH (char*,scalar_t__*) ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 struct pvo_entry* alloc_pvo_entry (int) ;
 scalar_t__ hw_direct_map ;
 int init_pvo_entry (struct pvo_entry*,int ,int ) ;
 int kernel_pmap ;
 scalar_t__ moea64_bpvo_pool ;
 int moea64_bpvo_pool_size ;
 int moea64_kenter (int ,int,int) ;
 int moea64_large_page_mask ;
 scalar_t__ moea64_large_page_size ;
 int moea64_pvo_enter (int ,struct pvo_entry*,int *,int *) ;
 TYPE_2__* pregions ;
 int pregions_sz ;
 scalar_t__ unmapped_buf_allowed ;

__attribute__((used)) static void
moea64_setup_direct_map(mmu_t mmup, vm_offset_t kernelstart,
    vm_offset_t kernelend)
{
 struct pvo_entry *pvo;
 register_t msr;
 vm_paddr_t pa, pkernelstart, pkernelend;
 vm_offset_t size, off;
 uint64_t pte_lo;
 int i;

 if (moea64_large_page_size == 0)
  hw_direct_map = 0;

 DISABLE_TRANS(msr);
 if (hw_direct_map) {
  PMAP_LOCK(kernel_pmap);
  for (i = 0; i < pregions_sz; i++) {
    for (pa = pregions[i].mr_start; pa < pregions[i].mr_start +
       pregions[i].mr_size; pa += moea64_large_page_size) {
   pte_lo = LPTE_M;

   pvo = alloc_pvo_entry(1 );
   pvo->pvo_vaddr |= PVO_WIRED | PVO_LARGE;
   init_pvo_entry(pvo, kernel_pmap, PHYS_TO_DMAP(pa));





   if (pa & moea64_large_page_mask) {
    pa &= moea64_large_page_mask;
    pte_lo |= LPTE_G;
   }
   if (pa + moea64_large_page_size >
       pregions[i].mr_start + pregions[i].mr_size)
    pte_lo |= LPTE_G;

   pvo->pvo_pte.prot = VM_PROT_READ | VM_PROT_WRITE |
       VM_PROT_EXECUTE;
   pvo->pvo_pte.pa = pa | pte_lo;
   moea64_pvo_enter(mmup, pvo, ((void*)0), ((void*)0));
    }
  }
  PMAP_UNLOCK(kernel_pmap);
 }






 if (kernelstart < DMAP_BASE_ADDRESS) {





  for (pa = kernelstart & ~PAGE_MASK; pa < kernelend;
      pa += PAGE_SIZE)
   moea64_kenter(mmup, pa, pa);
 } else if (!hw_direct_map) {
  pkernelstart = kernelstart & ~DMAP_BASE_ADDRESS;
  pkernelend = kernelend & ~DMAP_BASE_ADDRESS;
  for (pa = pkernelstart & ~PAGE_MASK; pa < pkernelend;
      pa += PAGE_SIZE)
   moea64_kenter(mmup, pa | DMAP_BASE_ADDRESS, pa);
 }

 if (!hw_direct_map) {
  size = moea64_bpvo_pool_size*sizeof(struct pvo_entry);
  off = (vm_offset_t)(moea64_bpvo_pool);
  for (pa = off; pa < off + size; pa += PAGE_SIZE)
   moea64_kenter(mmup, pa, pa);


  for (pa = EXC_RSVD; pa < EXC_LAST; pa += PAGE_SIZE)
   moea64_kenter(mmup, pa | DMAP_BASE_ADDRESS, pa);
 }
 ENABLE_TRANS(msr);





 if (!TUNABLE_INT_FETCH("vfs.unmapped_buf_allowed",
     &unmapped_buf_allowed))
  unmapped_buf_allowed = hw_direct_map;
}
