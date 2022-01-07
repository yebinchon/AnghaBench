
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int mmu_t ;



__attribute__((used)) static void
mmu_booke_copy(mmu_t mmu, pmap_t dst_pmap, pmap_t src_pmap,
    vm_offset_t dst_addr, vm_size_t len, vm_offset_t src_addr)
{

}
