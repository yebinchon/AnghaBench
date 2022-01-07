
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int delayed_taskqueue; int unit; } ;
struct dmar_domain {int refs; int ctx_cnt; int flags; int unload_task; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_DOMAIN_RMRR ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct dmar_domain*,int ) ;
 int dmar_domain_destroy (struct dmar_domain*) ;
 int link ;
 int taskqueue_drain (int ,int *) ;

__attribute__((used)) static void
dmar_unref_domain_locked(struct dmar_unit *dmar, struct dmar_domain *domain)
{

 DMAR_ASSERT_LOCKED(dmar);
 KASSERT(domain->refs >= 1,
     ("dmar %d domain %p refs %u", dmar->unit, domain, domain->refs));
 KASSERT(domain->refs > domain->ctx_cnt,
     ("dmar %d domain %p refs %d ctx_cnt %d", dmar->unit, domain,
     domain->refs, domain->ctx_cnt));

 if (domain->refs > 1) {
  domain->refs--;
  DMAR_UNLOCK(dmar);
  return;
 }

 KASSERT((domain->flags & DMAR_DOMAIN_RMRR) == 0,
     ("lost ref on RMRR domain %p", domain));

 LIST_REMOVE(domain, link);
 DMAR_UNLOCK(dmar);

 taskqueue_drain(dmar->delayed_taskqueue, &domain->unload_task);
 dmar_domain_destroy(domain);
}
