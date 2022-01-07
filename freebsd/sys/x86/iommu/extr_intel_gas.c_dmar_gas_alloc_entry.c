
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct dmar_map_entry {struct dmar_domain* domain; } ;
struct dmar_domain {int entries_cnt; } ;


 int DMAR_PGF_WAITOK ;
 int KASSERT (int,char*) ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int atomic_add_int (int *,int) ;
 int dmar_map_entry_zone ;
 struct dmar_map_entry* uma_zalloc (int ,int) ;

struct dmar_map_entry *
dmar_gas_alloc_entry(struct dmar_domain *domain, u_int flags)
{
 struct dmar_map_entry *res;

 KASSERT((flags & ~(DMAR_PGF_WAITOK)) == 0,
     ("unsupported flags %x", flags));

 res = uma_zalloc(dmar_map_entry_zone, ((flags & DMAR_PGF_WAITOK) !=
     0 ? M_WAITOK : M_NOWAIT) | M_ZERO);
 if (res != ((void*)0)) {
  res->domain = domain;
  atomic_add_int(&domain->entries_cnt, 1);
 }
 return (res);
}
