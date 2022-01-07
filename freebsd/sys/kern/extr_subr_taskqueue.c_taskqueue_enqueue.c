
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue {int dummy; } ;
struct task {int dummy; } ;


 int TQ_LOCK (struct taskqueue*) ;
 int taskqueue_enqueue_locked (struct taskqueue*,struct task*) ;

int
taskqueue_enqueue(struct taskqueue *queue, struct task *task)
{
 int res;

 TQ_LOCK(queue);
 res = taskqueue_enqueue_locked(queue, task);


 return (res);
}
