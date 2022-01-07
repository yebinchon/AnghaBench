
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct taskqueue {int dummy; } ;
struct task {int dummy; } ;


 int TQ_LOCK (struct taskqueue*) ;
 int TQ_UNLOCK (struct taskqueue*) ;
 int taskqueue_cancel_locked (struct taskqueue*,struct task*,int *) ;

int
taskqueue_cancel(struct taskqueue *queue, struct task *task, u_int *pendp)
{
 int error;

 TQ_LOCK(queue);
 error = taskqueue_cancel_locked(queue, task, pendp);
 TQ_UNLOCK(queue);

 return (error);
}
