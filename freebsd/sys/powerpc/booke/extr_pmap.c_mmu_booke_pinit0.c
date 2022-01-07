
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_t ;
typedef int mmu_t ;


 int PCPU_SET (int ,int ) ;
 int PMAP_LOCK_INIT (int ) ;
 int curpmap ;
 int mmu_booke_pinit (int ,int ) ;

__attribute__((used)) static void
mmu_booke_pinit0(mmu_t mmu, pmap_t pmap)
{

 PMAP_LOCK_INIT(pmap);
 mmu_booke_pinit(mmu, pmap);
 PCPU_SET(curpmap, pmap);
}
