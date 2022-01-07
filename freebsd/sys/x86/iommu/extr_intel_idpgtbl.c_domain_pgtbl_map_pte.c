
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
struct sf_buf {int dummy; } ;
struct dmar_domain {int dmar; int pgtbl_obj; } ;
struct TYPE_10__ {int pte; } ;
typedef TYPE_2__ dmar_pte_t ;
typedef int dmar_gaddr_t ;
struct TYPE_11__ {int ref_count; } ;
struct TYPE_9__ {scalar_t__ pindex; int ref_count; } ;


 int DMAR_DOMAIN_ASSERT_PGLOCKED (struct dmar_domain*) ;
 int DMAR_PGF_OBJL ;
 int DMAR_PGF_ZERO ;
 int DMAR_PTE_R ;
 int DMAR_PTE_W ;
 int KASSERT (int,char*) ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int dmar_flush_pte_to_ram (int ,TYPE_2__*) ;
 TYPE_2__* dmar_map_pgtbl (int ,scalar_t__,int,struct sf_buf**) ;
 TYPE_1__* dmar_pgalloc (int ,scalar_t__,int) ;
 int dmar_pgfree (int ,scalar_t__,int) ;
 int dmar_pte_store (int *,int) ;
 int dmar_unmap_pgtbl (struct sf_buf*) ;
 scalar_t__ domain_pgtbl_get_pindex (struct dmar_domain*,int ,int) ;
 int domain_pgtbl_pte_off (struct dmar_domain*,int ,int) ;
 scalar_t__ sf_buf_kva (struct sf_buf*) ;
 TYPE_3__* sf_buf_page (struct sf_buf*) ;

__attribute__((used)) static dmar_pte_t *
domain_pgtbl_map_pte(struct dmar_domain *domain, dmar_gaddr_t base, int lvl,
    int flags, vm_pindex_t *idxp, struct sf_buf **sf)
{
 vm_page_t m;
 struct sf_buf *sfp;
 dmar_pte_t *pte, *ptep;
 vm_pindex_t idx, idx1;

 DMAR_DOMAIN_ASSERT_PGLOCKED(domain);
 KASSERT((flags & DMAR_PGF_OBJL) != 0, ("lost PGF_OBJL"));

 idx = domain_pgtbl_get_pindex(domain, base, lvl);
 if (*sf != ((void*)0) && idx == *idxp) {
  pte = (dmar_pte_t *)sf_buf_kva(*sf);
 } else {
  if (*sf != ((void*)0))
   dmar_unmap_pgtbl(*sf);
  *idxp = idx;
retry:
  pte = dmar_map_pgtbl(domain->pgtbl_obj, idx, flags, sf);
  if (pte == ((void*)0)) {
   KASSERT(lvl > 0,
       ("lost root page table page %p", domain));





   m = dmar_pgalloc(domain->pgtbl_obj, idx, flags |
       DMAR_PGF_ZERO);
   if (m == ((void*)0))
    return (((void*)0));
   m->ref_count++;

   sfp = ((void*)0);
   ptep = domain_pgtbl_map_pte(domain, base, lvl - 1,
       flags, &idx1, &sfp);
   if (ptep == ((void*)0)) {
    KASSERT(m->pindex != 0,
        ("loosing root page %p", domain));
    m->ref_count--;
    dmar_pgfree(domain->pgtbl_obj, m->pindex,
        flags);
    return (((void*)0));
   }
   dmar_pte_store(&ptep->pte, DMAR_PTE_R | DMAR_PTE_W |
       VM_PAGE_TO_PHYS(m));
   dmar_flush_pte_to_ram(domain->dmar, ptep);
   sf_buf_page(sfp)->ref_count += 1;
   m->ref_count--;
   dmar_unmap_pgtbl(sfp);

   goto retry;
  }
 }
 pte += domain_pgtbl_pte_off(domain, base, lvl);
 return (pte);
}
