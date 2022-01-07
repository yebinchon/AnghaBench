
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int u_int ;
struct dmar_map_entry {scalar_t__ flags; } ;
struct dmar_gas_match_args {int size; int offset; struct dmar_map_entry* entry; int gas_flags; struct bus_dma_tag_common const* common; struct dmar_domain* domain; } ;
struct dmar_domain {scalar_t__ end; int rb_root; } ;
struct bus_dma_tag_common {scalar_t__ lowaddr; scalar_t__ highaddr; } ;
typedef int dmar_gaddr_t ;


 int DMAR_DOMAIN_ASSERT_LOCKED (struct dmar_domain*) ;
 int DMAR_PAGE_MASK ;
 int ENOMEM ;
 int KASSERT (int,char*) ;
 int RB_ROOT (int *) ;
 int dmar_gas_lowermatch (struct dmar_gas_match_args*,int ) ;
 int dmar_gas_uppermatch (struct dmar_gas_match_args*) ;

__attribute__((used)) static int
dmar_gas_find_space(struct dmar_domain *domain,
    const struct bus_dma_tag_common *common, dmar_gaddr_t size,
    int offset, u_int flags, struct dmar_map_entry *entry)
{
 struct dmar_gas_match_args a;
 int error;

 DMAR_DOMAIN_ASSERT_LOCKED(domain);
 KASSERT(entry->flags == 0, ("dirty entry %p %p", domain, entry));
 KASSERT((size & DMAR_PAGE_MASK) == 0, ("size %jx", (uintmax_t)size));

 a.domain = domain;
 a.size = size;
 a.offset = offset;
 a.common = common;
 a.gas_flags = flags;
 a.entry = entry;


 if (common->lowaddr > 0) {
  error = dmar_gas_lowermatch(&a, RB_ROOT(&domain->rb_root));
  if (error == 0)
   return (0);
  KASSERT(error == ENOMEM,
      ("error %d from dmar_gas_lowermatch", error));
 }

 if (common->highaddr >= domain->end)
  return (ENOMEM);
 error = dmar_gas_uppermatch(&a);
 KASSERT(error == ENOMEM,
     ("error %d from dmar_gas_uppermatch", error));
 return (error);
}
