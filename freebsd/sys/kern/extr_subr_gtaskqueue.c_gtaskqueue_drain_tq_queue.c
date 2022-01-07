
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtaskqueue {int tq_queue; } ;
struct gtask {int ta_flags; } ;


 int GTASK_INIT (struct gtask*,int ,int ,int ,struct gtask*) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct gtask*,int ) ;
 int TASK_ENQUEUED ;
 int TQ_SLEEP (struct gtaskqueue*,struct gtask*,char*) ;
 int USHRT_MAX ;
 int gtaskqueue_task_nop_fn ;
 int ta_link ;

__attribute__((used)) static void
gtaskqueue_drain_tq_queue(struct gtaskqueue *queue)
{
 struct gtask t_barrier;

 if (STAILQ_EMPTY(&queue->tq_queue))
  return;
 GTASK_INIT(&t_barrier, 0, USHRT_MAX, gtaskqueue_task_nop_fn, &t_barrier);
 STAILQ_INSERT_TAIL(&queue->tq_queue, &t_barrier, ta_link);
 t_barrier.ta_flags |= TASK_ENQUEUED;





 while (t_barrier.ta_flags & TASK_ENQUEUED)
  TQ_SLEEP(queue, &t_barrier, "gtq_qdrain");
}
