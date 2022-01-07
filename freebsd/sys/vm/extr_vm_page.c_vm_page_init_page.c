
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
struct TYPE_4__ {int segind; scalar_t__ dirty; scalar_t__ valid; int pool; int order; scalar_t__ psind; int queue; int phys_addr; scalar_t__ aflags; scalar_t__ flags; int busy_lock; scalar_t__ ref_count; int * object; } ;


 int PQ_NONE ;
 int VM_FREEPOOL_DEFAULT ;
 int VM_NFREEORDER ;
 int VPB_UNBUSIED ;
 int pmap_page_init (TYPE_1__*) ;

__attribute__((used)) static void
vm_page_init_page(vm_page_t m, vm_paddr_t pa, int segind)
{

 m->object = ((void*)0);
 m->ref_count = 0;
 m->busy_lock = VPB_UNBUSIED;
 m->flags = m->aflags = 0;
 m->phys_addr = pa;
 m->queue = PQ_NONE;
 m->psind = 0;
 m->segind = segind;
 m->order = VM_NFREEORDER;
 m->pool = VM_FREEPOOL_DEFAULT;
 m->valid = m->dirty = 0;
 pmap_page_init(m);
}
