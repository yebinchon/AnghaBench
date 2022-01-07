
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmc_classdep {int pcd_class; } ;
typedef enum pmc_class { ____Placeholder_pmc_class } pmc_class ;
struct TYPE_2__ {int pmd_nclass; struct pmc_classdep* pmd_classdep; } ;


 TYPE_1__* md ;

__attribute__((used)) static struct pmc_classdep *
pmc_class_to_classdep(enum pmc_class class)
{
 int n;

 for (n = 0; n < md->pmd_nclass; n++)
  if (md->pmd_classdep[n].pcd_class == class)
   return (&md->pmd_classdep[n]);
 return (((void*)0));
}
