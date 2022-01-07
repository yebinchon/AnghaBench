
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_map_entries_tailq {int dummy; } ;
struct dmar_domain {int unload_entries; } ;


 int DMAR_DOMAIN_LOCK (struct dmar_domain*) ;
 int DMAR_DOMAIN_UNLOCK (struct dmar_domain*) ;
 scalar_t__ TAILQ_EMPTY (struct dmar_map_entries_tailq*) ;
 int TAILQ_INIT (struct dmar_map_entries_tailq*) ;
 int TAILQ_SWAP (int *,struct dmar_map_entries_tailq*,int ,int ) ;
 int dmamap_link ;
 int dmar_domain_unload (struct dmar_domain*,struct dmar_map_entries_tailq*,int) ;
 int dmar_map_entry ;

__attribute__((used)) static void
dmar_domain_unload_task(void *arg, int pending)
{
 struct dmar_domain *domain;
 struct dmar_map_entries_tailq entries;

 domain = arg;
 TAILQ_INIT(&entries);

 for (;;) {
  DMAR_DOMAIN_LOCK(domain);
  TAILQ_SWAP(&domain->unload_entries, &entries, dmar_map_entry,
      dmamap_link);
  DMAR_DOMAIN_UNLOCK(domain);
  if (TAILQ_EMPTY(&entries))
   break;
  dmar_domain_unload(domain, &entries, 1);
 }
}
