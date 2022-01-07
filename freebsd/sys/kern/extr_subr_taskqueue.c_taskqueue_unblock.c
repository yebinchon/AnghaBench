
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue {int tq_context; int (* tq_enqueue ) (int ) ;int tq_queue; int tq_flags; } ;


 int STAILQ_EMPTY (int *) ;
 int TQ_FLAGS_BLOCKED ;
 int TQ_LOCK (struct taskqueue*) ;
 int TQ_UNLOCK (struct taskqueue*) ;
 int stub1 (int ) ;

void
taskqueue_unblock(struct taskqueue *queue)
{

 TQ_LOCK(queue);
 queue->tq_flags &= ~TQ_FLAGS_BLOCKED;
 if (!STAILQ_EMPTY(&queue->tq_queue))
  queue->tq_enqueue(queue->tq_context);
 TQ_UNLOCK(queue);
}
