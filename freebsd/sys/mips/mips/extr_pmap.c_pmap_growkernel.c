
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vm_page_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef scalar_t__ pd_entry_t ;
struct TYPE_3__ {int system_mtx; } ;


 int MA_OWNED ;
 int MIPS_KSEG0_LARGEST_PHYS ;
 scalar_t__ MIPS_PHYS_TO_DIRECT (int ) ;
 int NBPDR ;
 int NBSEG ;
 int NPTEPG ;
 int PAGE_SIZE ;
 int PDRMASK ;
 int PTE_G ;
 int VM_ALLOC_INTERRUPT ;
 int VM_PAGE_TO_PHYS (int *) ;
 TYPE_1__* kernel_map ;
 int kernel_pmap ;
 int kernel_vm_end ;
 int mtx_assert (int *,int ) ;
 int nkpt ;
 int panic (char*) ;
 int * pmap_alloc_direct_page (int ,int) ;
 scalar_t__* pmap_pdpe_to_pde (scalar_t__*,int) ;
 scalar_t__* pmap_segmap (int ,int) ;
 int roundup2 (int,int ) ;
 int vm_map_max (TYPE_1__*) ;
 scalar_t__ vm_page_reclaim_contig (int,int,int ,int ,int ,int ) ;

void
pmap_growkernel(vm_offset_t addr)
{
 vm_page_t nkpg;
 pd_entry_t *pde, *pdpe;
 pt_entry_t *pte;
 int i, req_class;

 mtx_assert(&kernel_map->system_mtx, MA_OWNED);
 req_class = VM_ALLOC_INTERRUPT;
 addr = roundup2(addr, NBSEG);
 if (addr - 1 >= vm_map_max(kernel_map))
  addr = vm_map_max(kernel_map);
 while (kernel_vm_end < addr) {
  pdpe = pmap_segmap(kernel_pmap, kernel_vm_end);
  pde = pmap_pdpe_to_pde(pdpe, kernel_vm_end);
  if (*pde != 0) {
   kernel_vm_end = (kernel_vm_end + NBPDR) & ~PDRMASK;
   if (kernel_vm_end - 1 >= vm_map_max(kernel_map)) {
    kernel_vm_end = vm_map_max(kernel_map);
    break;
   }
   continue;
  }




  nkpg = pmap_alloc_direct_page(nkpt, req_class);

  if (nkpg == ((void*)0) && vm_page_reclaim_contig(req_class, 1,
      0, MIPS_KSEG0_LARGEST_PHYS, PAGE_SIZE, 0))
   nkpg = pmap_alloc_direct_page(nkpt, req_class);

  if (nkpg == ((void*)0))
   panic("pmap_growkernel: no memory to grow kernel");
  nkpt++;
  *pde = (pd_entry_t)MIPS_PHYS_TO_DIRECT(VM_PAGE_TO_PHYS(nkpg));
  pte = (pt_entry_t *)*pde;
  for (i = 0; i < NPTEPG; i++)
   pte[i] = PTE_G;

  kernel_vm_end = (kernel_vm_end + NBPDR) & ~PDRMASK;
  if (kernel_vm_end - 1 >= vm_map_max(kernel_map)) {
   kernel_vm_end = vm_map_max(kernel_map);
   break;
  }
 }
}
