
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue {int dummy; } ;


 int TQ_LOCK (struct taskqueue*) ;
 int TQ_UNLOCK (struct taskqueue*) ;
 int taskqueue_run_locked (struct taskqueue*) ;

void
taskqueue_run(struct taskqueue *queue)
{

 TQ_LOCK(queue);
 taskqueue_run_locked(queue);
 TQ_UNLOCK(queue);
}
