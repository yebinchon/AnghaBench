
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;


 int pmap_kenter (int ,int ) ;
 int pmap_kremove (int ) ;

__attribute__((used)) static void
pmap_kenter_temporary(vm_offset_t va, vm_paddr_t pa)
{
 pmap_kremove(va);
 pmap_kenter(va, pa);
}
