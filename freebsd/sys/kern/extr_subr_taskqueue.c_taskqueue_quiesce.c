
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue {int dummy; } ;


 int TQ_LOCK (struct taskqueue*) ;
 int TQ_UNLOCK (struct taskqueue*) ;
 int taskqueue_drain_tq_active (struct taskqueue*) ;
 int taskqueue_drain_tq_queue (struct taskqueue*) ;

void
taskqueue_quiesce(struct taskqueue *queue)
{
 int ret;

 TQ_LOCK(queue);
 do {
  ret = taskqueue_drain_tq_queue(queue);
  if (ret == 0)
   ret = taskqueue_drain_tq_active(queue);
 } while (ret != 0);
 TQ_UNLOCK(queue);
}
