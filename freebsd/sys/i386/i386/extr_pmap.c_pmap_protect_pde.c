
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int * vm_page_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
typedef int boolean_t ;


 int FALSE ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 size_t NBPDR ;
 size_t PAGE_SIZE ;
 int PDRMASK ;
 int PG_G ;
 int PG_M ;
 int PG_MANAGED ;
 int PG_PROMOTED ;
 int PG_PS_FRAME ;
 int PG_RW ;
 int * PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int TRUE ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_WRITE ;
 int i386_read_exec ;
 int kernel_pmap ;
 int pde_cmpset (int*,int,int) ;
 int pg_nx ;
 int pmap_invalidate_pde_page (int ,int,int) ;
 int vm_page_dirty (int *) ;

__attribute__((used)) static boolean_t
pmap_protect_pde(pmap_t pmap, pd_entry_t *pde, vm_offset_t sva, vm_prot_t prot)
{
 pd_entry_t newpde, oldpde;
 vm_page_t m, mt;
 boolean_t anychanged;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 KASSERT((sva & PDRMASK) == 0,
     ("pmap_protect_pde: sva is not 4mpage aligned"));
 anychanged = FALSE;
retry:
 oldpde = newpde = *pde;
 if ((prot & VM_PROT_WRITE) == 0) {
  if ((oldpde & (PG_MANAGED | PG_M | PG_RW)) ==
      (PG_MANAGED | PG_M | PG_RW)) {
   m = PHYS_TO_VM_PAGE(oldpde & PG_PS_FRAME);
   for (mt = m; mt < &m[NBPDR / PAGE_SIZE]; mt++)
    vm_page_dirty(mt);
  }
  newpde &= ~(PG_RW | PG_M);
 }




 if (newpde != oldpde) {





  if (!pde_cmpset(pde, oldpde, newpde & ~PG_PROMOTED))
   goto retry;
  if ((oldpde & PG_G) != 0)
   pmap_invalidate_pde_page(kernel_pmap, sva, oldpde);
  else
   anychanged = TRUE;
 }
 return (anychanged);
}
