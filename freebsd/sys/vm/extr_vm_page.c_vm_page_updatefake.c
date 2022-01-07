
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_memattr_t ;
struct TYPE_4__ {int flags; int phys_addr; } ;


 int KASSERT (int,char*) ;
 int PG_FICTITIOUS ;
 int pmap_page_set_memattr (TYPE_1__*,int ) ;

void
vm_page_updatefake(vm_page_t m, vm_paddr_t paddr, vm_memattr_t memattr)
{

 KASSERT((m->flags & PG_FICTITIOUS) != 0,
     ("vm_page_updatefake: bad page %p", m));
 m->phys_addr = paddr;
 pmap_page_set_memattr(m, memattr);
}
