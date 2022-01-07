
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_7__ {int pm_l1; } ;
struct TYPE_6__ {int pm_satp; int pm_active; int pm_l1; int pm_stats; } ;


 int CPU_ZERO (int *) ;
 int PAGE_SHIFT ;
 int PMAP_LOCK_INIT (TYPE_1__*) ;
 int SATP_MODE_SV39 ;
 int bzero (int *,int) ;
 TYPE_4__* kernel_pmap ;
 int pmap_activate_boot (TYPE_1__*) ;
 int vtophys (int ) ;

void
pmap_pinit0(pmap_t pmap)
{

 PMAP_LOCK_INIT(pmap);
 bzero(&pmap->pm_stats, sizeof(pmap->pm_stats));
 pmap->pm_l1 = kernel_pmap->pm_l1;
 pmap->pm_satp = SATP_MODE_SV39 | (vtophys(pmap->pm_l1) >> PAGE_SHIFT);
 CPU_ZERO(&pmap->pm_active);
 pmap_activate_boot(pmap);
}
