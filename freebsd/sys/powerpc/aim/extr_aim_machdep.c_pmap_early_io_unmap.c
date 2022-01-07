
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int KASSERT (int,char*) ;
 int pmap_bootstrapped ;

void
pmap_early_io_unmap(vm_offset_t va, vm_size_t size)
{

 KASSERT(!pmap_bootstrapped, ("Not available after PMAP started!"));
}
