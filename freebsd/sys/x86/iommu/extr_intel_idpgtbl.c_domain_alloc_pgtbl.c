
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct dmar_domain {int dmar; int flags; int * pgtbl_obj; int pglvl; } ;
struct TYPE_3__ {int ref_count; } ;


 int DMAR_DOMAIN_PGLOCK (struct dmar_domain*) ;
 int DMAR_DOMAIN_PGTBL_INITED ;
 int DMAR_DOMAIN_PGUNLOCK (struct dmar_domain*) ;
 int DMAR_LOCK (int ) ;
 int DMAR_PGF_OBJL ;
 int DMAR_PGF_WAITOK ;
 int DMAR_PGF_ZERO ;
 int DMAR_UNLOCK (int ) ;
 int IDX_TO_OFF (int ) ;
 int KASSERT (int ,char*) ;
 int OBJT_PHYS ;
 TYPE_1__* dmar_pgalloc (int *,int ,int) ;
 int pglvl_max_pages (int ) ;
 int * vm_pager_allocate (int ,int *,int ,int ,int ,int *) ;

int
domain_alloc_pgtbl(struct dmar_domain *domain)
{
 vm_page_t m;

 KASSERT(domain->pgtbl_obj == ((void*)0),
     ("already initialized %p", domain));

 domain->pgtbl_obj = vm_pager_allocate(OBJT_PHYS, ((void*)0),
     IDX_TO_OFF(pglvl_max_pages(domain->pglvl)), 0, 0, ((void*)0));
 DMAR_DOMAIN_PGLOCK(domain);
 m = dmar_pgalloc(domain->pgtbl_obj, 0, DMAR_PGF_WAITOK |
     DMAR_PGF_ZERO | DMAR_PGF_OBJL);

 m->ref_count = 1;
 DMAR_DOMAIN_PGUNLOCK(domain);
 DMAR_LOCK(domain->dmar);
 domain->flags |= DMAR_DOMAIN_PGTBL_INITED;
 DMAR_UNLOCK(domain->dmar);
 return (0);
}
