
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {int pm_stats; int * pm_tsb_obj; int * pm_tsb; int pm_active; int * pm_context; } ;


 int CPU_ZERO (int *) ;
 int MAXCPU ;
 int PMAP_LOCK_INIT (TYPE_1__*) ;
 int TLB_CTX_KERNEL ;
 int bzero (int *,int) ;

void
pmap_pinit0(pmap_t pm)
{
 int i;

 PMAP_LOCK_INIT(pm);
 for (i = 0; i < MAXCPU; i++)
  pm->pm_context[i] = TLB_CTX_KERNEL;
 CPU_ZERO(&pm->pm_active);
 pm->pm_tsb = ((void*)0);
 pm->pm_tsb_obj = ((void*)0);
 bzero(&pm->pm_stats, sizeof(pm->pm_stats));
}
