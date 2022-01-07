
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int pglvl; } ;
typedef int dmar_gaddr_t ;


 int DMAR_NPTEPGSHIFT ;
 int DMAR_PAGE_SHIFT ;
 int DMAR_PTEMASK ;

__attribute__((used)) static int
domain_pgtbl_pte_off(struct dmar_domain *domain, dmar_gaddr_t base, int lvl)
{

 base >>= DMAR_PAGE_SHIFT + (domain->pglvl - lvl - 1) *
     DMAR_NPTEPGSHIFT;
 return (base & DMAR_PTEMASK);
}
