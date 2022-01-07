
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_map_entry {int flags; } ;
struct dmar_domain {int dummy; } ;


 int DMAR_DOMAIN_ASSERT_LOCKED (struct dmar_domain*) ;
 int DMAR_MAP_ENTRY_MAP ;
 int DMAR_MAP_ENTRY_PLACE ;
 int DMAR_MAP_ENTRY_RMRR ;
 int KASSERT (int,char*) ;
 scalar_t__ dmar_check_free ;
 int dmar_gas_check_free (struct dmar_domain*) ;
 int dmar_gas_rb_remove (struct dmar_domain*,struct dmar_map_entry*) ;

void
dmar_gas_free_space(struct dmar_domain *domain, struct dmar_map_entry *entry)
{

 DMAR_DOMAIN_ASSERT_LOCKED(domain);
 KASSERT((entry->flags & (DMAR_MAP_ENTRY_PLACE | DMAR_MAP_ENTRY_RMRR |
     DMAR_MAP_ENTRY_MAP)) == DMAR_MAP_ENTRY_MAP,
     ("permanent entry %p %p", domain, entry));

 dmar_gas_rb_remove(domain, entry);
 entry->flags &= ~DMAR_MAP_ENTRY_MAP;




}
