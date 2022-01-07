
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtaskqueue {int tq_queue; } ;
struct gtask {int ta_flags; } ;


 int EBUSY ;
 int STAILQ_REMOVE (int *,struct gtask*,struct gtask*,int ) ;
 int TASK_ENQUEUED ;
 int ta_link ;
 scalar_t__ task_is_running (struct gtaskqueue*,struct gtask*) ;

__attribute__((used)) static int
gtaskqueue_cancel_locked(struct gtaskqueue *queue, struct gtask *gtask)
{

 if (gtask->ta_flags & TASK_ENQUEUED)
  STAILQ_REMOVE(&queue->tq_queue, gtask, gtask, ta_link);
 gtask->ta_flags &= ~TASK_ENQUEUED;
 return (task_is_running(queue, gtask) ? EBUSY : 0);
}
