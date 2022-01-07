
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int pglvl; } ;
typedef int dmar_gaddr_t ;


 int pglvl_page_size (int ,int) ;

dmar_gaddr_t
domain_page_size(struct dmar_domain *domain, int lvl)
{

 return (pglvl_page_size(domain->pglvl, lvl));
}
