
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int pte_t ;
struct TYPE_2__ {int** pm_pdir; } ;


 int PAGE_SIZE ;
 size_t PDIR_IDX (scalar_t__) ;
 size_t PTBL_IDX (scalar_t__) ;
 int PTBL_PAGES ;
 int PTE_M ;
 int PTE_PS_4KB ;
 int PTE_RPN_FROM_PA (scalar_t__) ;
 int PTE_SR ;
 int PTE_SW ;
 int PTE_SX ;
 int PTE_VALID ;
 int PTE_WIRED ;
 TYPE_1__* kernel_pmap ;
 int kernel_ptbls ;
 scalar_t__ kernload ;
 scalar_t__ kernstart ;
 int kptbl_min ;

__attribute__((used)) static void
kernel_pte_alloc(vm_offset_t data_end, vm_offset_t addr, vm_offset_t pdir)
{
 int i;
 vm_offset_t va;
 pte_t *pte;


 for (i = 0; i < kernel_ptbls; i++)
  kernel_pmap->pm_pdir[kptbl_min + i] =
      (pte_t *)(pdir + (i * PAGE_SIZE * PTBL_PAGES));







 for (va = addr; va < data_end; va += PAGE_SIZE) {
  pte = &(kernel_pmap->pm_pdir[PDIR_IDX(va)][PTBL_IDX(va)]);
  *pte = PTE_RPN_FROM_PA(kernload + (va - kernstart));
  *pte |= PTE_M | PTE_SR | PTE_SW | PTE_SX | PTE_WIRED |
      PTE_VALID | PTE_PS_4KB;
 }
}
