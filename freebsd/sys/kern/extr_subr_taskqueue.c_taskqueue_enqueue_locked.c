
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue {int tq_flags; int tq_context; int (* tq_enqueue ) (int ) ;int tq_queue; struct task* tq_hint; } ;
struct task {int ta_pending; scalar_t__ ta_priority; int * ta_func; } ;


 int KASSERT (int ,char*) ;
 struct task* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_AFTER (int *,struct task*,struct task*,int ) ;
 int STAILQ_INSERT_HEAD (int *,struct task*,int ) ;
 int STAILQ_INSERT_TAIL (int *,struct task*,int ) ;
 struct task* STAILQ_LAST (int *,struct task*,int ) ;
 struct task* STAILQ_NEXT (struct task*,int ) ;
 int TQ_FLAGS_BLOCKED ;
 int TQ_FLAGS_UNLOCKED_ENQUEUE ;
 int TQ_UNLOCK (struct taskqueue*) ;
 int USHRT_MAX ;
 int stub1 (int ) ;
 int ta_link ;

__attribute__((used)) static int
taskqueue_enqueue_locked(struct taskqueue *queue, struct task *task)
{
 struct task *ins;
 struct task *prev;

 KASSERT(task->ta_func != ((void*)0), ("enqueueing task with NULL func"));



 if (task->ta_pending) {
  if (task->ta_pending < USHRT_MAX)
   task->ta_pending++;
  TQ_UNLOCK(queue);
  return (0);
 }







 prev = STAILQ_LAST(&queue->tq_queue, task, ta_link);
 if (!prev || prev->ta_priority >= task->ta_priority) {
  STAILQ_INSERT_TAIL(&queue->tq_queue, task, ta_link);
 } else {
  prev = queue->tq_hint;
  if (prev && prev->ta_priority >= task->ta_priority) {
   ins = STAILQ_NEXT(prev, ta_link);
  } else {
   prev = ((void*)0);
   ins = STAILQ_FIRST(&queue->tq_queue);
  }
  for (; ins; prev = ins, ins = STAILQ_NEXT(ins, ta_link))
   if (ins->ta_priority < task->ta_priority)
    break;

  if (prev) {
   STAILQ_INSERT_AFTER(&queue->tq_queue, prev, task, ta_link);
   queue->tq_hint = task;
  } else
   STAILQ_INSERT_HEAD(&queue->tq_queue, task, ta_link);
 }

 task->ta_pending = 1;
 if ((queue->tq_flags & TQ_FLAGS_UNLOCKED_ENQUEUE) != 0)
  TQ_UNLOCK(queue);
 if ((queue->tq_flags & TQ_FLAGS_BLOCKED) == 0)
  queue->tq_enqueue(queue->tq_context);
 if ((queue->tq_flags & TQ_FLAGS_UNLOCKED_ENQUEUE) == 0)
  TQ_UNLOCK(queue);


 return (0);
}
