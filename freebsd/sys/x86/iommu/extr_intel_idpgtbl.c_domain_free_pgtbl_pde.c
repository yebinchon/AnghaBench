
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
struct sf_buf {int dummy; } ;
struct dmar_domain {int dummy; } ;
typedef int dmar_pte_t ;
typedef int dmar_gaddr_t ;


 int * domain_pgtbl_map_pte (struct dmar_domain*,int ,int,int,int *,struct sf_buf**) ;
 int domain_unmap_clear_pte (struct dmar_domain*,int ,int,int,int *,struct sf_buf**,int) ;

__attribute__((used)) static void
domain_free_pgtbl_pde(struct dmar_domain *domain, dmar_gaddr_t base,
    int lvl, int flags)
{
 struct sf_buf *sf;
 dmar_pte_t *pde;
 vm_pindex_t idx;

 sf = ((void*)0);
 pde = domain_pgtbl_map_pte(domain, base, lvl, flags, &idx, &sf);
 domain_unmap_clear_pte(domain, base, lvl, flags, pde, &sf, 1);
}
