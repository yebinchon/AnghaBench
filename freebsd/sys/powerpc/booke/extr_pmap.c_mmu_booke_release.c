
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* pmap_t ;
typedef int mmu_t ;
struct TYPE_4__ {scalar_t__ resident_count; } ;
struct TYPE_5__ {int pm_pdir; int pm_pp2d; TYPE_1__ pm_stats; } ;


 int KASSERT (int,char*) ;
 int ptbl_root_zone ;
 int uma_zfree (int ,int ) ;

__attribute__((used)) static void
mmu_booke_release(mmu_t mmu, pmap_t pmap)
{

 KASSERT(pmap->pm_stats.resident_count == 0,
     ("pmap_release: pmap resident count %ld != 0",
     pmap->pm_stats.resident_count));



 uma_zfree(ptbl_root_zone, pmap->pm_pdir);

}
