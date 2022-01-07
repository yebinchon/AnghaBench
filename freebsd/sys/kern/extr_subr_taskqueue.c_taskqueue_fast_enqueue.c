
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int swi_sched (int ,int ) ;
 int taskqueue_fast_ih ;

__attribute__((used)) static void
taskqueue_fast_enqueue(void *context)
{
 swi_sched(taskqueue_fast_ih, 0);
}
