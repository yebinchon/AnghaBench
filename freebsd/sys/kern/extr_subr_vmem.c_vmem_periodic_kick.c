
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;
 int vmem_periodic_wk ;

__attribute__((used)) static void
vmem_periodic_kick(void *dummy)
{

 taskqueue_enqueue(taskqueue_thread, &vmem_periodic_wk);
}
