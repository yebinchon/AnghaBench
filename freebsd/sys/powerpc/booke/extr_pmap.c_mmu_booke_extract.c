
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int mmu_t ;


 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int pte_vatopa (int ,int ,int ) ;

__attribute__((used)) static vm_paddr_t
mmu_booke_extract(mmu_t mmu, pmap_t pmap, vm_offset_t va)
{
 vm_paddr_t pa;

 PMAP_LOCK(pmap);
 pa = pte_vatopa(mmu, pmap, va);
 PMAP_UNLOCK(pmap);

 return (pa);
}
