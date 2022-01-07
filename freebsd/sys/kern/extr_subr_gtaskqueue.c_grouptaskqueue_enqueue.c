
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtaskqueue {int tq_flags; int tq_context; int (* tq_enqueue ) (int ) ;int tq_queue; } ;
struct gtask {int ta_flags; } ;


 int EAGAIN ;
 int STAILQ_INSERT_TAIL (int *,struct gtask*,int ) ;
 int TASK_ENQUEUED ;
 int TASK_NOENQUEUE ;
 int TQ_FLAGS_BLOCKED ;
 int TQ_LOCK (struct gtaskqueue*) ;
 int TQ_UNLOCK (struct gtaskqueue*) ;
 int gtask_dump (struct gtask*) ;
 int panic (char*) ;
 int stub1 (int ) ;
 int ta_link ;

int
grouptaskqueue_enqueue(struct gtaskqueue *queue, struct gtask *gtask)
{






 TQ_LOCK(queue);
 if (gtask->ta_flags & TASK_ENQUEUED) {
  TQ_UNLOCK(queue);
  return (0);
 }
 if (gtask->ta_flags & TASK_NOENQUEUE) {
  TQ_UNLOCK(queue);
  return (EAGAIN);
 }
 STAILQ_INSERT_TAIL(&queue->tq_queue, gtask, ta_link);
 gtask->ta_flags |= TASK_ENQUEUED;
 TQ_UNLOCK(queue);
 if ((queue->tq_flags & TQ_FLAGS_BLOCKED) == 0)
  queue->tq_enqueue(queue->tq_context);
 return (0);
}
