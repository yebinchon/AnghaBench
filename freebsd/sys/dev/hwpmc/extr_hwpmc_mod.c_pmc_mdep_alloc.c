
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_mdep {int pmd_nclass; } ;
struct pmc_classdep {int dummy; } ;


 int M_PMC ;
 int M_WAITOK ;
 int M_ZERO ;
 struct pmc_mdep* malloc (int,int ,int) ;
 int pmc_soft_initialize (struct pmc_mdep*) ;

struct pmc_mdep *
pmc_mdep_alloc(int nclasses)
{
 struct pmc_mdep *md;
 int n;


 n = 1 + nclasses;
 md = malloc(sizeof(struct pmc_mdep) + n *
     sizeof(struct pmc_classdep), M_PMC, M_WAITOK|M_ZERO);
 md->pmd_nclass = n;


 pmc_soft_initialize(md);
 return md;
}
