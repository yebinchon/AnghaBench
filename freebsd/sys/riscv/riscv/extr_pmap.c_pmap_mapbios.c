
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_paddr_t ;


 scalar_t__ PHYS_TO_DMAP (int ) ;

void *
pmap_mapbios(vm_paddr_t pa, vm_size_t size)
{

        return ((void *)PHYS_TO_DMAP(pa));
}
