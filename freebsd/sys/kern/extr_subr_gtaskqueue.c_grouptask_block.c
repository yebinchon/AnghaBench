
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtaskqueue {int dummy; } ;
struct gtask {int ta_flags; } ;
struct grouptask {struct gtask gt_task; struct gtaskqueue* gt_taskqueue; } ;


 int TASK_NOENQUEUE ;
 int TQ_LOCK (struct gtaskqueue*) ;
 int TQ_UNLOCK (struct gtaskqueue*) ;
 int gtask_dump (struct gtask*) ;
 int gtaskqueue_drain_locked (struct gtaskqueue*,struct gtask*) ;
 int panic (char*) ;

void
grouptask_block(struct grouptask *grouptask)
{
 struct gtaskqueue *queue = grouptask->gt_taskqueue;
 struct gtask *gtask = &grouptask->gt_task;







 TQ_LOCK(queue);
 gtask->ta_flags |= TASK_NOENQUEUE;
   gtaskqueue_drain_locked(queue, gtask);
 TQ_UNLOCK(queue);
}
