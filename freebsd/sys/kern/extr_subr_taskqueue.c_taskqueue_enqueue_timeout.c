
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeout_task {int dummy; } ;
struct taskqueue {int dummy; } ;


 int taskqueue_enqueue_timeout_sbt (struct taskqueue*,struct timeout_task*,int,int ,int ) ;
 int tick_sbt ;

int
taskqueue_enqueue_timeout(struct taskqueue *queue,
    struct timeout_task *ttask, int ticks)
{

 return (taskqueue_enqueue_timeout_sbt(queue, ttask, ticks * tick_sbt,
     0, 0));
}
