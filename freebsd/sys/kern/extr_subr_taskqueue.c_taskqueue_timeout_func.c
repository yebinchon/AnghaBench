
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeout_task {int f; int t; struct taskqueue* q; } ;
struct taskqueue {int tq_callouts; } ;


 int DT_CALLOUT_ARMED ;
 int KASSERT (int,char*) ;
 int taskqueue_enqueue_locked (struct taskqueue*,int *) ;

__attribute__((used)) static void
taskqueue_timeout_func(void *arg)
{
 struct taskqueue *queue;
 struct timeout_task *timeout_task;

 timeout_task = arg;
 queue = timeout_task->q;
 KASSERT((timeout_task->f & DT_CALLOUT_ARMED) != 0, ("Stray timeout"));
 timeout_task->f &= ~DT_CALLOUT_ARMED;
 queue->tq_callouts--;
 taskqueue_enqueue_locked(timeout_task->q, &timeout_task->t);

}
