
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_map_entry {int flags; struct dmar_domain* domain; } ;
struct dmar_domain {int dummy; } ;


 int DMAR_DOMAIN_LOCK (struct dmar_domain*) ;
 int DMAR_DOMAIN_UNLOCK (struct dmar_domain*) ;
 int DMAR_MAP_ENTRY_RMRR ;
 int dmar_gas_free_entry (struct dmar_domain*,struct dmar_map_entry*) ;
 int dmar_gas_free_region (struct dmar_domain*,struct dmar_map_entry*) ;
 int dmar_gas_free_space (struct dmar_domain*,struct dmar_map_entry*) ;

void
dmar_domain_free_entry(struct dmar_map_entry *entry, bool free)
{
 struct dmar_domain *domain;

 domain = entry->domain;
 DMAR_DOMAIN_LOCK(domain);
 if ((entry->flags & DMAR_MAP_ENTRY_RMRR) != 0)
  dmar_gas_free_region(domain, entry);
 else
  dmar_gas_free_space(domain, entry);
 DMAR_DOMAIN_UNLOCK(domain);
 if (free)
  dmar_gas_free_entry(domain, entry);
 else
  entry->flags = 0;
}
