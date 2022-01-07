
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct taskqueue {struct task* tq_hint; int tq_queue; } ;
struct task {scalar_t__ ta_pending; } ;


 int EBUSY ;
 int STAILQ_REMOVE (int *,struct task*,struct task*,int ) ;
 int ta_link ;
 scalar_t__ task_is_running (struct taskqueue*,struct task*) ;

__attribute__((used)) static int
taskqueue_cancel_locked(struct taskqueue *queue, struct task *task,
    u_int *pendp)
{

 if (task->ta_pending > 0) {
  STAILQ_REMOVE(&queue->tq_queue, task, task, ta_link);
  if (queue->tq_hint == task)
   queue->tq_hint = ((void*)0);
 }
 if (pendp != ((void*)0))
  *pendp = task->ta_pending;
 task->ta_pending = 0;
 return (task_is_running(queue, task) ? EBUSY : 0);
}
