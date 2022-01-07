
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dmar_unit {int tlb_flush_entries; scalar_t__ qi_enabled; } ;
struct dmar_map_entry {scalar_t__ start; scalar_t__ end; TYPE_1__* domain; int flags; int gseq; } ;
struct TYPE_3__ {struct dmar_unit* dmar; } ;


 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_MAP_ENTRY_QI_NF ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int TAILQ_INSERT_TAIL (int *,struct dmar_map_entry*,int ) ;
 int dmamap_link ;
 int dmar_domain_free_entry (struct dmar_map_entry*,int) ;
 int dmar_qi_invalidate_locked (TYPE_1__*,scalar_t__,scalar_t__,int *,int) ;
 int domain_flush_iotlb_sync (TYPE_1__*,scalar_t__,scalar_t__) ;

void
dmar_domain_unload_entry(struct dmar_map_entry *entry, bool free)
{
 struct dmar_unit *unit;

 unit = entry->domain->dmar;
 if (unit->qi_enabled) {
  DMAR_LOCK(unit);
  dmar_qi_invalidate_locked(entry->domain, entry->start,
      entry->end - entry->start, &entry->gseq, 1);
  if (!free)
   entry->flags |= DMAR_MAP_ENTRY_QI_NF;
  TAILQ_INSERT_TAIL(&unit->tlb_flush_entries, entry, dmamap_link);
  DMAR_UNLOCK(unit);
 } else {
  domain_flush_iotlb_sync(entry->domain, entry->start,
      entry->end - entry->start);
  dmar_domain_free_entry(entry, free);
 }
}
