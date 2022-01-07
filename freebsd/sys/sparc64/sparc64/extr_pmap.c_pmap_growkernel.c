
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int panic (char*) ;

void
pmap_growkernel(vm_offset_t addr)
{

 panic("pmap_growkernel: can't grow kernel");
}
