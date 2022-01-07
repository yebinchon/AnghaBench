
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_4__ {int queue; } ;


 int PGA_QUEUE_STATE_MASK ;
 int PQ_NONE ;
 int atomic_thread_fence_rel () ;
 int vm_page_aflag_clear (TYPE_1__*,int ) ;

__attribute__((used)) static void
vm_page_dequeue_complete(vm_page_t m)
{

 m->queue = PQ_NONE;
 atomic_thread_fence_rel();
 vm_page_aflag_clear(m, PGA_QUEUE_STATE_MASK);
}
