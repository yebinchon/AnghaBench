
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_5__ {scalar_t__ queue; int aflags; scalar_t__ ref_count; scalar_t__ dirty; scalar_t__ valid; int * object; } ;


 int KASSERT (int,char*) ;
 int PGA_QUEUE_STATE_MASK ;
 scalar_t__ PQ_NONE ;
 scalar_t__ VM_MEMATTR_DEFAULT ;
 scalar_t__ pmap_page_get_memattr (TYPE_1__*) ;
 int vm_page_busied (TYPE_1__*) ;

__attribute__((used)) static void
vm_page_alloc_check(vm_page_t m)
{

 KASSERT(m->object == ((void*)0), ("page %p has object", m));
 KASSERT(m->queue == PQ_NONE && (m->aflags & PGA_QUEUE_STATE_MASK) == 0,
     ("page %p has unexpected queue %d, flags %#x",
     m, m->queue, (m->aflags & PGA_QUEUE_STATE_MASK)));
 KASSERT(m->ref_count == 0, ("page %p has references", m));
 KASSERT(!vm_page_busied(m), ("page %p is busy", m));
 KASSERT(m->dirty == 0, ("page %p is dirty", m));
 KASSERT(pmap_page_get_memattr(m) == VM_MEMATTR_DEFAULT,
     ("page %p has unexpected memattr %d",
     m, pmap_page_get_memattr(m)));
 KASSERT(m->valid == 0, ("free page %p is valid", m));
}
