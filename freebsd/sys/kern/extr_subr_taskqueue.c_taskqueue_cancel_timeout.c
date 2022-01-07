
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timeout_task {int f; int t; int c; } ;
struct taskqueue {int tq_callouts; } ;


 int DT_CALLOUT_ARMED ;
 int TQ_LOCK (struct taskqueue*) ;
 int TQ_UNLOCK (struct taskqueue*) ;
 scalar_t__ callout_stop (int *) ;
 int taskqueue_cancel_locked (struct taskqueue*,int *,int*) ;

int
taskqueue_cancel_timeout(struct taskqueue *queue,
    struct timeout_task *timeout_task, u_int *pendp)
{
 u_int pending, pending1;
 int error;

 TQ_LOCK(queue);
 pending = !!(callout_stop(&timeout_task->c) > 0);
 error = taskqueue_cancel_locked(queue, &timeout_task->t, &pending1);
 if ((timeout_task->f & DT_CALLOUT_ARMED) != 0) {
  timeout_task->f &= ~DT_CALLOUT_ARMED;
  queue->tq_callouts--;
 }
 TQ_UNLOCK(queue);

 if (pendp != ((void*)0))
  *pendp = pending + pending1;
 return (error);
}
