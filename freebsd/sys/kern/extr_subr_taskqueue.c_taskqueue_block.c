
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue {int tq_flags; } ;


 int TQ_FLAGS_BLOCKED ;
 int TQ_LOCK (struct taskqueue*) ;
 int TQ_UNLOCK (struct taskqueue*) ;

void
taskqueue_block(struct taskqueue *queue)
{

 TQ_LOCK(queue);
 queue->tq_flags |= TQ_FLAGS_BLOCKED;
 TQ_UNLOCK(queue);
}
