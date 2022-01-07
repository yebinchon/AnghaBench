
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
typedef int mmu_t ;
struct TYPE_4__ {scalar_t__* pm_sr; int pm_slb; } ;


 int KASSERT (int,char*) ;
 int VSID_TO_HASH (scalar_t__) ;
 int moea64_release_vsid (int ) ;
 int slb_free_tree (TYPE_1__*) ;
 int slb_free_user_cache (int ) ;

void
moea64_release(mmu_t mmu, pmap_t pmap)
{
 KASSERT(pmap->pm_sr[0] != 0, ("moea64_release: pm_sr[0] = 0"));

 moea64_release_vsid(VSID_TO_HASH(pmap->pm_sr[0]));

}
