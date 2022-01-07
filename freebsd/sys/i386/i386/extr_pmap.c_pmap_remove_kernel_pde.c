
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_4__ {scalar_t__ valid; } ;


 int * KPTmap ;
 int MA_OWNED ;
 int PG_A ;
 int PG_M ;
 int PG_RW ;
 int PG_V ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 size_t i386_btop (int ) ;
 int pagezero (void*) ;
 int panic (char*) ;
 int pmap_invalidate_page_int (int ,int ) ;
 int pmap_kenter_pde (int ,int) ;
 TYPE_1__* pmap_remove_pt_page (int ,int ) ;
 int pmap_update_pde (int ,int ,int*,int) ;
 int trunc_4mpage (int ) ;
 scalar_t__ vtopte (int ) ;
 scalar_t__ workaround_erratum383 ;

__attribute__((used)) static void
pmap_remove_kernel_pde(pmap_t pmap, pd_entry_t *pde, vm_offset_t va)
{
 pd_entry_t newpde;
 vm_paddr_t mptepa;
 vm_page_t mpte;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 mpte = pmap_remove_pt_page(pmap, va);
 if (mpte == ((void*)0))
  panic("pmap_remove_kernel_pde: Missing pt page.");

 mptepa = VM_PAGE_TO_PHYS(mpte);
 newpde = mptepa | PG_M | PG_A | PG_RW | PG_V;





 if (mpte->valid != 0)
  pagezero((void *)&KPTmap[i386_btop(trunc_4mpage(va))]);




 if (workaround_erratum383)
  pmap_update_pde(pmap, va, pde, newpde);
 else
  pmap_kenter_pde(va, newpde);




 pmap_invalidate_page_int(pmap, (vm_offset_t)vtopte(va));
}
