
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_memattr_t ;
struct TYPE_5__ {int flags; int ref_count; int busy_lock; int oflags; int queue; int phys_addr; } ;


 int PG_FICTITIOUS ;
 int PQ_NONE ;
 int VPB_SINGLE_EXCLUSIVER ;
 int VPO_UNMANAGED ;
 int pmap_page_init (TYPE_1__*) ;
 int pmap_page_set_memattr (TYPE_1__*,int ) ;

void
vm_page_initfake(vm_page_t m, vm_paddr_t paddr, vm_memattr_t memattr)
{

 if ((m->flags & PG_FICTITIOUS) != 0) {





  goto memattr;
 }
 m->phys_addr = paddr;
 m->queue = PQ_NONE;

 m->flags = PG_FICTITIOUS;

 m->oflags = VPO_UNMANAGED;
 m->busy_lock = VPB_SINGLE_EXCLUSIVER;

 m->ref_count = 1;
 pmap_page_init(m);
memattr:
 pmap_page_set_memattr(m, memattr);
}
