
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct pmap_invalidate_page_arg {int va; int pmap; } ;
typedef int pmap_t ;


 int pmap_call_on_active_cpus (int ,int ,struct pmap_invalidate_page_arg*) ;
 int pmap_invalidate_page_action ;

__attribute__((used)) static void
pmap_invalidate_page(pmap_t pmap, vm_offset_t va)
{
 struct pmap_invalidate_page_arg arg;

 arg.pmap = pmap;
 arg.va = va;
 pmap_call_on_active_cpus(pmap, pmap_invalidate_page_action, &arg);
}
