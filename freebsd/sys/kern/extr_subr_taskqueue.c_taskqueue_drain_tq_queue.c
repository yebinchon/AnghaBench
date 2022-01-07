
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue {struct task* tq_hint; int tq_queue; } ;
struct task {int ta_pending; } ;


 scalar_t__ STAILQ_EMPTY (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct task*,int ) ;
 int TASK_INIT (struct task*,int ,int ,struct task*) ;
 int TQ_SLEEP (struct taskqueue*,struct task*,char*) ;
 int USHRT_MAX ;
 int ta_link ;
 int taskqueue_task_nop_fn ;

__attribute__((used)) static int
taskqueue_drain_tq_queue(struct taskqueue *queue)
{
 struct task t_barrier;

 if (STAILQ_EMPTY(&queue->tq_queue))
  return (0);
 TASK_INIT(&t_barrier, USHRT_MAX, taskqueue_task_nop_fn, &t_barrier);
 STAILQ_INSERT_TAIL(&queue->tq_queue, &t_barrier, ta_link);
 queue->tq_hint = &t_barrier;
 t_barrier.ta_pending = 1;





 while (t_barrier.ta_pending != 0)
  TQ_SLEEP(queue, &t_barrier, "tq_qdrain");
 return (1);
}
