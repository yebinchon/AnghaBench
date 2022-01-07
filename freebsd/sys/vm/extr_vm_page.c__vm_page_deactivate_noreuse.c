
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_8__ {int aflags; int queue; } ;


 int PGA_REQUEUE_HEAD ;
 int PQ_INACTIVE ;
 int vm_page_aflag_set (TYPE_1__*,int) ;
 int vm_page_assert_locked (TYPE_1__*) ;
 int vm_page_dequeue (TYPE_1__*) ;
 int vm_page_inactive (TYPE_1__*) ;
 int vm_page_pqbatch_submit (TYPE_1__*,int ) ;

__attribute__((used)) static void
_vm_page_deactivate_noreuse(vm_page_t m)
{

 vm_page_assert_locked(m);

 if (!vm_page_inactive(m)) {
  vm_page_dequeue(m);
  m->queue = PQ_INACTIVE;
 }
 if ((m->aflags & PGA_REQUEUE_HEAD) == 0)
  vm_page_aflag_set(m, PGA_REQUEUE_HEAD);
 vm_page_pqbatch_submit(m, PQ_INACTIVE);
}
