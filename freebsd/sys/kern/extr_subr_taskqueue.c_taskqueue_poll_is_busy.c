
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue {int dummy; } ;
struct task {scalar_t__ ta_pending; } ;


 int TQ_LOCK (struct taskqueue*) ;
 int TQ_UNLOCK (struct taskqueue*) ;
 scalar_t__ task_is_running (struct taskqueue*,struct task*) ;

int
taskqueue_poll_is_busy(struct taskqueue *queue, struct task *task)
{
 int retval;

 TQ_LOCK(queue);
 retval = task->ta_pending > 0 || task_is_running(queue, task);
 TQ_UNLOCK(queue);

 return (retval);
}
