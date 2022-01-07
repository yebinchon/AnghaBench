
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue_busy {scalar_t__ tb_seq; struct task* tb_running; } ;
struct taskqueue {scalar_t__ tq_seq; struct task* tq_hint; int tq_queue; int tq_active; } ;
struct task {int ta_pending; int ta_context; int (* ta_func ) (int ,int) ;} ;


 int KASSERT (int ,char*) ;
 int LIST_INSERT_HEAD (int *,struct taskqueue_busy*,int ) ;
 int LIST_REMOVE (struct taskqueue_busy*,int ) ;
 struct task* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TQ_ASSERT_LOCKED (struct taskqueue*) ;
 int TQ_LOCK (struct taskqueue*) ;
 int TQ_UNLOCK (struct taskqueue*) ;
 int stub1 (int ,int) ;
 int ta_link ;
 int tb_link ;
 int wakeup (struct task*) ;

__attribute__((used)) static void
taskqueue_run_locked(struct taskqueue *queue)
{
 struct taskqueue_busy tb;
 struct task *task;
 int pending;

 KASSERT(queue != ((void*)0), ("tq is NULL"));
 TQ_ASSERT_LOCKED(queue);
 tb.tb_running = ((void*)0);
 LIST_INSERT_HEAD(&queue->tq_active, &tb, tb_link);

 while ((task = STAILQ_FIRST(&queue->tq_queue)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&queue->tq_queue, ta_link);
  if (queue->tq_hint == task)
   queue->tq_hint = ((void*)0);
  pending = task->ta_pending;
  task->ta_pending = 0;
  tb.tb_running = task;
  tb.tb_seq = ++queue->tq_seq;
  TQ_UNLOCK(queue);

  KASSERT(task->ta_func != ((void*)0), ("task->ta_func is NULL"));
  task->ta_func(task->ta_context, pending);

  TQ_LOCK(queue);
  wakeup(task);
 }
 LIST_REMOVE(&tb, tb_link);
}
