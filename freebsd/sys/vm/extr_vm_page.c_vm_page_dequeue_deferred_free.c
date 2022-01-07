
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ ref_count; int aflags; int queue; } ;


 int KASSERT (int,char*) ;
 int PGA_DEQUEUE ;
 int PQ_NONE ;
 int atomic_load_8 (int *) ;
 int atomic_thread_fence_acq () ;
 int vm_page_pqbatch_submit (TYPE_1__*,int ) ;
 scalar_t__ vm_page_pqstate_cmpset (TYPE_1__*,int ,int ,int,int) ;

__attribute__((used)) static void
vm_page_dequeue_deferred_free(vm_page_t m)
{
 uint8_t queue;

 KASSERT(m->ref_count == 0, ("page %p has references", m));

 for (;;) {
  if ((m->aflags & PGA_DEQUEUE) != 0)
   return;
  atomic_thread_fence_acq();
  if ((queue = atomic_load_8(&m->queue)) == PQ_NONE)
   return;
  if (vm_page_pqstate_cmpset(m, queue, queue, PGA_DEQUEUE,
      PGA_DEQUEUE)) {
   vm_page_pqbatch_submit(m, queue);
   break;
  }
 }
}
