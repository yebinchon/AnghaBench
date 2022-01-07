
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmar_domain {scalar_t__ ctx_cnt; scalar_t__ refs; int flags; int domain; TYPE_1__* dmar; int lock; int * pgtbl_obj; int contexts; int unload_entries; } ;
struct TYPE_2__ {int domids; } ;


 int DMAR_DOMAIN_GAS_INITED ;
 int DMAR_DOMAIN_LOCK (struct dmar_domain*) ;
 int DMAR_DOMAIN_PGLOCK (struct dmar_domain*) ;
 int DMAR_DOMAIN_PGTBL_INITED ;
 int DMAR_DOMAIN_UNLOCK (struct dmar_domain*) ;
 int KASSERT (int,char*) ;
 int LIST_EMPTY (int *) ;
 int M_DMAR_DOMAIN ;
 int TAILQ_EMPTY (int *) ;
 int dmar_gas_fini_domain (struct dmar_domain*) ;
 int domain_free_pgtbl (struct dmar_domain*) ;
 int free (struct dmar_domain*,int ) ;
 int free_unr (int ,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
dmar_domain_destroy(struct dmar_domain *domain)
{

 KASSERT(TAILQ_EMPTY(&domain->unload_entries),
     ("unfinished unloads %p", domain));
 KASSERT(LIST_EMPTY(&domain->contexts),
     ("destroying dom %p with contexts", domain));
 KASSERT(domain->ctx_cnt == 0,
     ("destroying dom %p with ctx_cnt %d", domain, domain->ctx_cnt));
 KASSERT(domain->refs == 0,
     ("destroying dom %p with refs %d", domain, domain->refs));
 if ((domain->flags & DMAR_DOMAIN_GAS_INITED) != 0) {
  DMAR_DOMAIN_LOCK(domain);
  dmar_gas_fini_domain(domain);
  DMAR_DOMAIN_UNLOCK(domain);
 }
 if ((domain->flags & DMAR_DOMAIN_PGTBL_INITED) != 0) {
  if (domain->pgtbl_obj != ((void*)0))
   DMAR_DOMAIN_PGLOCK(domain);
  domain_free_pgtbl(domain);
 }
 mtx_destroy(&domain->lock);
 free_unr(domain->dmar->domids, domain->domain);
 free(domain, M_DMAR_DOMAIN);
}
