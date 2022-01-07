
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_map_entry {int dummy; } ;
struct dmar_domain {int batch_no; } ;


 int * TAILQ_NEXT (struct dmar_map_entry*,int ) ;
 int dmamap_link ;
 int dmar_batch_coalesce ;

__attribute__((used)) static bool
dmar_domain_unload_emit_wait(struct dmar_domain *domain,
    struct dmar_map_entry *entry)
{

 if (TAILQ_NEXT(entry, dmamap_link) == ((void*)0))
  return (1);
 return (domain->batch_no++ % dmar_batch_coalesce == 0);
}
