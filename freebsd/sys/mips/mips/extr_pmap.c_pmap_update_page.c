
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct pmap_update_page_arg {int pte; int va; int pmap; } ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int pmap_call_on_active_cpus (int ,int ,struct pmap_update_page_arg*) ;
 int pmap_update_page_action ;

__attribute__((used)) static void
pmap_update_page(pmap_t pmap, vm_offset_t va, pt_entry_t pte)
{
 struct pmap_update_page_arg arg;

 arg.pmap = pmap;
 arg.va = va;
 arg.pte = pte;
 pmap_call_on_active_cpus(pmap, pmap_update_page_action, &arg);
}
