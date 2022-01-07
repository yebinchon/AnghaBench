
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_paddr_t ;
typedef int mmu_t ;


 int VM_MEMATTR_DEFAULT ;
 void* mmu_booke_mapdev_attr (int ,int ,int ,int ) ;

__attribute__((used)) static void *
mmu_booke_mapdev(mmu_t mmu, vm_paddr_t pa, vm_size_t size)
{

 return (mmu_booke_mapdev_attr(mmu, pa, size, VM_MEMATTR_DEFAULT));
}
