
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int MA_OWNED ;
 int NPTEPG ;
 scalar_t__ PCPU_GET (int ) ;
 int PG_A ;
 int PG_FRAME ;
 int PG_M ;
 int PG_RW ;
 int PG_V ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int critical_enter () ;
 int critical_exit () ;
 int i386_btop (int ) ;
 int invlcaddr (void*) ;
 int pmap_eh_ptep ;
 int pmap_eh_va ;

__attribute__((used)) static pt_entry_t
pmap_pte_ufast(pmap_t pmap, vm_offset_t va, pd_entry_t pde)
{
 pt_entry_t *eh_ptep, pte, *ptep;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 pde &= PG_FRAME;
 critical_enter();
 eh_ptep = (pt_entry_t *)PCPU_GET(pmap_eh_ptep);
 if ((*eh_ptep & PG_FRAME) != pde) {
  *eh_ptep = pde | PG_RW | PG_V | PG_A | PG_M;
  invlcaddr((void *)PCPU_GET(pmap_eh_va));
 }
 ptep = (pt_entry_t *)PCPU_GET(pmap_eh_va) + (i386_btop(va) &
     (NPTEPG - 1));
 pte = *ptep;
 critical_exit();
 return (pte);
}
