
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeout_task {int f; int t; int c; } ;
struct taskqueue {int dummy; } ;


 int DT_DRAIN_IN_PROGRESS ;
 int KASSERT (int,char*) ;
 int TQ_LOCK (struct taskqueue*) ;
 int TQ_UNLOCK (struct taskqueue*) ;
 int callout_drain (int *) ;
 int taskqueue_drain (struct taskqueue*,int *) ;

void
taskqueue_drain_timeout(struct taskqueue *queue,
    struct timeout_task *timeout_task)
{




 TQ_LOCK(queue);
 KASSERT((timeout_task->f & DT_DRAIN_IN_PROGRESS) == 0,
     ("Drain already in progress"));
 timeout_task->f |= DT_DRAIN_IN_PROGRESS;
 TQ_UNLOCK(queue);

 callout_drain(&timeout_task->c);
 taskqueue_drain(queue, &timeout_task->t);




 TQ_LOCK(queue);
 timeout_task->f &= ~DT_DRAIN_IN_PROGRESS;
 TQ_UNLOCK(queue);
}
