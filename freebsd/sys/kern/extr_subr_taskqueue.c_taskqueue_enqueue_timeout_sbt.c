
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ta_pending; } ;
struct timeout_task {int f; int c; TYPE_1__ t; struct taskqueue* q; } ;
struct taskqueue {int tq_callouts; int tq_spin; } ;
typedef int sbintime_t ;


 int DT_CALLOUT_ARMED ;
 int DT_DRAIN_IN_PROGRESS ;
 int KASSERT (int,char*) ;
 int TQ_LOCK (struct taskqueue*) ;
 int TQ_UNLOCK (struct taskqueue*) ;
 int callout_reset_sbt (int *,int ,int ,int ,struct timeout_task*,int) ;
 int taskqueue_enqueue_locked (struct taskqueue*,TYPE_1__*) ;
 int taskqueue_timeout_func ;

int
taskqueue_enqueue_timeout_sbt(struct taskqueue *queue,
    struct timeout_task *timeout_task, sbintime_t sbt, sbintime_t pr, int flags)
{
 int res;

 TQ_LOCK(queue);
 KASSERT(timeout_task->q == ((void*)0) || timeout_task->q == queue,
     ("Migrated queue"));
 KASSERT(!queue->tq_spin, ("Timeout for spin-queue"));
 timeout_task->q = queue;
 res = timeout_task->t.ta_pending;
 if (timeout_task->f & DT_DRAIN_IN_PROGRESS) {

  TQ_UNLOCK(queue);
  res = -1;
 } else if (sbt == 0) {
  taskqueue_enqueue_locked(queue, &timeout_task->t);

 } else {
  if ((timeout_task->f & DT_CALLOUT_ARMED) != 0) {
   res++;
  } else {
   queue->tq_callouts++;
   timeout_task->f |= DT_CALLOUT_ARMED;
   if (sbt < 0)
    sbt = -sbt;
  }
  if (sbt > 0) {
   callout_reset_sbt(&timeout_task->c, sbt, pr,
       taskqueue_timeout_func, timeout_task, flags);
  }
  TQ_UNLOCK(queue);
 }
 return (res);
}
