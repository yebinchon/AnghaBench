
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtaskqueue_busy {scalar_t__ tb_seq; struct gtask* tb_running; } ;
struct gtaskqueue {scalar_t__ tq_seq; int tq_queue; int tq_active; } ;
struct gtask {int ta_context; int (* ta_func ) (int ) ;int ta_flags; } ;


 int KASSERT (int ,char*) ;
 int LIST_INSERT_HEAD (int *,struct gtaskqueue_busy*,int ) ;
 int LIST_REMOVE (struct gtaskqueue_busy*,int ) ;
 struct gtask* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TASK_ENQUEUED ;
 int TQ_ASSERT_LOCKED (struct gtaskqueue*) ;
 int TQ_LOCK (struct gtaskqueue*) ;
 int TQ_UNLOCK (struct gtaskqueue*) ;
 int stub1 (int ) ;
 int ta_link ;
 int tb_link ;
 int wakeup (struct gtask*) ;

__attribute__((used)) static void
gtaskqueue_run_locked(struct gtaskqueue *queue)
{
 struct gtaskqueue_busy tb;
 struct gtask *gtask;

 KASSERT(queue != ((void*)0), ("tq is NULL"));
 TQ_ASSERT_LOCKED(queue);
 tb.tb_running = ((void*)0);
 LIST_INSERT_HEAD(&queue->tq_active, &tb, tb_link);

 while ((gtask = STAILQ_FIRST(&queue->tq_queue)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&queue->tq_queue, ta_link);
  gtask->ta_flags &= ~TASK_ENQUEUED;
  tb.tb_running = gtask;
  tb.tb_seq = ++queue->tq_seq;
  TQ_UNLOCK(queue);

  KASSERT(gtask->ta_func != ((void*)0), ("task->ta_func is NULL"));
  gtask->ta_func(gtask->ta_context);

  TQ_LOCK(queue);
  wakeup(gtask);
 }
 LIST_REMOVE(&tb, tb_link);
}
