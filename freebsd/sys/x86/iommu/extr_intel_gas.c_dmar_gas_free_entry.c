
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_map_entry {struct dmar_domain* domain; } ;
struct dmar_domain {int entries_cnt; } ;


 int KASSERT (int,char*) ;
 int atomic_subtract_int (int *,int) ;
 int dmar_map_entry_zone ;
 int uma_zfree (int ,struct dmar_map_entry*) ;

void
dmar_gas_free_entry(struct dmar_domain *domain, struct dmar_map_entry *entry)
{

 KASSERT(domain == entry->domain,
     ("mismatched free domain %p entry %p entry->domain %p", domain,
     entry, entry->domain));
 atomic_subtract_int(&domain->entries_cnt, 1);
 uma_zfree(dmar_map_entry_zone, entry);
}
