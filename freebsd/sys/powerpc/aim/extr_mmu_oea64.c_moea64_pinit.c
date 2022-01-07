
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint32_t ;
typedef TYPE_1__* pmap_t ;
typedef int mmu_t ;
struct TYPE_3__ {int * pm_sr; struct TYPE_3__* pmap_phys; int pmap_pvo; } ;


 int KASSERT (int,char*) ;
 int RB_INIT (int *) ;
 int VSID_MAKE (int,int ) ;
 int moea64_get_unique_vsid () ;
 scalar_t__ moea64_kextract (int ,int ) ;
 scalar_t__ pmap_bootstrapped ;

void
moea64_pinit(mmu_t mmu, pmap_t pmap)
{
 int i;
 uint32_t hash;

 RB_INIT(&pmap->pmap_pvo);

 if (pmap_bootstrapped)
  pmap->pmap_phys = (pmap_t)moea64_kextract(mmu,
      (vm_offset_t)pmap);
 else
  pmap->pmap_phys = pmap;




 hash = moea64_get_unique_vsid();

 for (i = 0; i < 16; i++)
  pmap->pm_sr[i] = VSID_MAKE(i, hash);

 KASSERT(pmap->pm_sr[0] != 0, ("moea64_pinit: pm_sr[0] = 0"));
}
