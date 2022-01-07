
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtaskqueue {int tq_flags; } ;


 int TQ_FLAGS_BLOCKED ;
 int TQ_LOCK (struct gtaskqueue*) ;
 int TQ_UNLOCK (struct gtaskqueue*) ;

void
gtaskqueue_block(struct gtaskqueue *queue)
{

 TQ_LOCK(queue);
 queue->tq_flags |= TQ_FLAGS_BLOCKED;
 TQ_UNLOCK(queue);
}
