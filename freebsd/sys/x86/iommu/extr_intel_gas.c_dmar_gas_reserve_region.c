
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_map_entry {int flags; void* end; void* start; } ;
struct dmar_domain {int dummy; } ;
typedef void* dmar_gaddr_t ;


 int DMAR_DOMAIN_LOCK (struct dmar_domain*) ;
 int DMAR_DOMAIN_UNLOCK (struct dmar_domain*) ;
 int DMAR_GM_CANWAIT ;
 int DMAR_MAP_ENTRY_UNMAPPED ;
 int DMAR_PGF_WAITOK ;
 struct dmar_map_entry* dmar_gas_alloc_entry (struct dmar_domain*,int ) ;
 int dmar_gas_alloc_region (struct dmar_domain*,struct dmar_map_entry*,int ) ;
 int dmar_gas_free_entry (struct dmar_domain*,struct dmar_map_entry*) ;

int
dmar_gas_reserve_region(struct dmar_domain *domain, dmar_gaddr_t start,
    dmar_gaddr_t end)
{
 struct dmar_map_entry *entry;
 int error;

 entry = dmar_gas_alloc_entry(domain, DMAR_PGF_WAITOK);
 entry->start = start;
 entry->end = end;
 DMAR_DOMAIN_LOCK(domain);
 error = dmar_gas_alloc_region(domain, entry, DMAR_GM_CANWAIT);
 if (error == 0)
  entry->flags |= DMAR_MAP_ENTRY_UNMAPPED;
 DMAR_DOMAIN_UNLOCK(domain);
 if (error != 0)
  dmar_gas_free_entry(domain, entry);
 return (error);
}
