
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* pmap_t ;
struct TYPE_7__ {int pm_stats; int pm_pvchunk; TYPE_1__* pm_asid; int pm_active; int pm_segtab; } ;
struct TYPE_6__ {scalar_t__ gen; int asid; } ;


 int CPU_ZERO (int *) ;
 int MAXCPU ;
 int PCPU_SET (int ,TYPE_2__*) ;
 int PMAP_ASID_RESERVED ;
 int PMAP_LOCK_INIT (TYPE_2__*) ;
 int TAILQ_INIT (int *) ;
 int bzero (int *,int) ;
 int curpmap ;
 int kernel_segmap ;

void
pmap_pinit0(pmap_t pmap)
{
 int i;

 PMAP_LOCK_INIT(pmap);
 pmap->pm_segtab = kernel_segmap;
 CPU_ZERO(&pmap->pm_active);
 for (i = 0; i < MAXCPU; i++) {
  pmap->pm_asid[i].asid = PMAP_ASID_RESERVED;
  pmap->pm_asid[i].gen = 0;
 }
 PCPU_SET(curpmap, pmap);
 TAILQ_INIT(&pmap->pm_pvchunk);
 bzero(&pmap->pm_stats, sizeof pmap->pm_stats);
}
