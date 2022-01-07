
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtaskqueue {int dummy; } ;
struct gtask {int ta_flags; } ;


 int TASK_ENQUEUED ;
 int TQ_SLEEP (struct gtaskqueue*,struct gtask*,char*) ;
 scalar_t__ task_is_running (struct gtaskqueue*,struct gtask*) ;

__attribute__((used)) static void
gtaskqueue_drain_locked(struct gtaskqueue *queue, struct gtask *gtask)
{
 while ((gtask->ta_flags & TASK_ENQUEUED) || task_is_running(queue, gtask))
  TQ_SLEEP(queue, gtask, "gtq_drain");
}
