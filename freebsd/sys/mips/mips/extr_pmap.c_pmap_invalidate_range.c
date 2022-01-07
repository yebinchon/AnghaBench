
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vm_offset_t ;
struct pmap_invalidate_range_arg {void* eva; void* sva; int pmap; } ;
typedef int pmap_t ;


 int pmap_call_on_active_cpus (int ,int ,struct pmap_invalidate_range_arg*) ;
 int pmap_invalidate_range_action ;

__attribute__((used)) static void
pmap_invalidate_range(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
 struct pmap_invalidate_range_arg arg;

 arg.pmap = pmap;
 arg.sva = sva;
 arg.eva = eva;
 pmap_call_on_active_cpus(pmap, pmap_invalidate_range_action, &arg);
}
