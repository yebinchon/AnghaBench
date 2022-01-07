
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;


 int pmap_sync_icache_one ;
 int smp_rendezvous (int *,int ,int *,int *) ;

void
pmap_sync_icache(pmap_t pm, vm_offset_t va, vm_size_t sz)
{

 smp_rendezvous(((void*)0), pmap_sync_icache_one, ((void*)0), ((void*)0));
}
