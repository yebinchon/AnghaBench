
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int* vm_offset_t ;


 int* PCPU_GET (int ) ;
 int PTE_C_CACHE ;
 int PTE_D ;
 int PTE_G ;
 int PTE_V ;
 int TLBLO_PA_TO_PFN (int ) ;
 int cmap1_addr ;
 int cmap1_ptep ;
 int critical_enter () ;

__attribute__((used)) static __inline vm_offset_t
pmap_lmem_map1(vm_paddr_t phys)
{
 critical_enter();
 *PCPU_GET(cmap1_ptep) =
     TLBLO_PA_TO_PFN(phys) | PTE_C_CACHE | PTE_D | PTE_V | PTE_G;
 return (PCPU_GET(cmap1_addr));
}
