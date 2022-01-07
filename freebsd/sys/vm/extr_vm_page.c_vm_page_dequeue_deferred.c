
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int uint8_t ;


 int PGA_DEQUEUE ;
 int PQ_NONE ;
 int vm_page_assert_locked (int ) ;
 int vm_page_pqbatch_submit (int ,int ) ;
 scalar_t__ vm_page_pqstate_cmpset (int ,int ,int ,int ,int ) ;
 int vm_page_queue (int ) ;

void
vm_page_dequeue_deferred(vm_page_t m)
{
 uint8_t queue;

 vm_page_assert_locked(m);

 if ((queue = vm_page_queue(m)) == PQ_NONE)
  return;
 if (vm_page_pqstate_cmpset(m, queue, queue, PGA_DEQUEUE, PGA_DEQUEUE))
  vm_page_pqbatch_submit(m, queue);
}
