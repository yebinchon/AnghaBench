
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
typedef int mmu_t ;
struct TYPE_5__ {int pm_stats; } ;


 int PMAP_LOCK_INIT (TYPE_1__*) ;
 int bzero (int *,int) ;
 int moea64_pinit (int ,TYPE_1__*) ;

void
moea64_pinit0(mmu_t mmu, pmap_t pm)
{

 PMAP_LOCK_INIT(pm);
 moea64_pinit(mmu, pm);
 bzero(&pm->pm_stats, sizeof(pm->pm_stats));
}
