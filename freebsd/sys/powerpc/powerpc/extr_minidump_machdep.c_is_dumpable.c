
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
struct TYPE_3__ {int flags; } ;


 int PG_NODUMP ;
 scalar_t__* dump_avail ;
 TYPE_1__* vm_phys_paddr_to_vm_page (scalar_t__) ;

int
is_dumpable(vm_paddr_t pa)
{
 vm_page_t m;
 int i;

 if ((m = vm_phys_paddr_to_vm_page(pa)) != ((void*)0))
  return ((m->flags & PG_NODUMP) == 0);
 for (i = 0; dump_avail[i] != 0 || dump_avail[i + 1] != 0; i += 2) {
  if (pa >= dump_avail[i] && pa < dump_avail[i + 1])
   return (1);
 }
 return (0);
}
