
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int hw_ecap; int domids; } ;
struct dmar_domain {int domain; unsigned long long end; int agaw; int flags; int pgtbl_obj; struct dmar_unit* dmar; int lock; int unload_task; int unload_entries; int rb_root; int contexts; } ;


 unsigned long long BUS_SPACE_MAXADDR ;
 int DMAR_DOMAIN_IDMAP ;
 int DMAR_ECAP_PT ;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int M_DMAR_DOMAIN ;
 int M_WAITOK ;
 int M_ZERO ;
 int Maxmem ;
 int RB_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,struct dmar_domain*) ;
 int alloc_unr (int ) ;
 int dmar_domain_destroy (struct dmar_domain*) ;
 int dmar_domain_unload_task ;
 int dmar_gas_init_domain (struct dmar_domain*) ;
 int dmar_gas_reserve_region (struct dmar_domain*,int,int) ;
 int dmar_maxaddr2mgaw (struct dmar_unit*,unsigned long long,int) ;
 int domain_alloc_pgtbl (struct dmar_domain*) ;
 int domain_get_idmap_pgtbl (struct dmar_domain*,unsigned long long) ;
 int domain_set_agaw (struct dmar_domain*,int) ;
 struct dmar_domain* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 unsigned long long ptoa (int ) ;

__attribute__((used)) static struct dmar_domain *
dmar_domain_alloc(struct dmar_unit *dmar, bool id_mapped)
{
 struct dmar_domain *domain;
 int error, id, mgaw;

 id = alloc_unr(dmar->domids);
 if (id == -1)
  return (((void*)0));
 domain = malloc(sizeof(*domain), M_DMAR_DOMAIN, M_WAITOK | M_ZERO);
 domain->domain = id;
 LIST_INIT(&domain->contexts);
 RB_INIT(&domain->rb_root);
 TAILQ_INIT(&domain->unload_entries);
 TASK_INIT(&domain->unload_task, 0, dmar_domain_unload_task, domain);
 mtx_init(&domain->lock, "dmardom", ((void*)0), MTX_DEF);
 domain->dmar = dmar;







 domain->end = id_mapped ? ptoa(Maxmem) : BUS_SPACE_MAXADDR;
 mgaw = dmar_maxaddr2mgaw(dmar, domain->end, !id_mapped);
 error = domain_set_agaw(domain, mgaw);
 if (error != 0)
  goto fail;
 if (!id_mapped)

  domain->end = 1ULL << (domain->agaw - 1);

 dmar_gas_init_domain(domain);

 if (id_mapped) {
  if ((dmar->hw_ecap & DMAR_ECAP_PT) == 0) {
   domain->pgtbl_obj = domain_get_idmap_pgtbl(domain,
       domain->end);
  }
  domain->flags |= DMAR_DOMAIN_IDMAP;
 } else {
  error = domain_alloc_pgtbl(domain);
  if (error != 0)
   goto fail;

  error = dmar_gas_reserve_region(domain, 0xfee00000,
      0xfeefffff + 1);
  if (error != 0)
   goto fail;
 }
 return (domain);

fail:
 dmar_domain_destroy(domain);
 return (((void*)0));
}
