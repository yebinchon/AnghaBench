
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int mmu_t ;



__attribute__((used)) static int
mmu_booke_mincore(mmu_t mmu, pmap_t pmap, vm_offset_t addr,
    vm_paddr_t *pap)
{


 return (0);
}
