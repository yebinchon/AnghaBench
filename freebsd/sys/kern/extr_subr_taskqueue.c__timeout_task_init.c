
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_fn_t ;
struct timeout_task {scalar_t__ f; struct taskqueue* q; int c; int t; } ;
struct taskqueue {int tq_mutex; } ;


 int CALLOUT_RETURNUNLOCKED ;
 int TASK_INIT (int *,int,int ,void*) ;
 int callout_init_mtx (int *,int *,int ) ;

void
_timeout_task_init(struct taskqueue *queue, struct timeout_task *timeout_task,
    int priority, task_fn_t func, void *context)
{

 TASK_INIT(&timeout_task->t, priority, func, context);
 callout_init_mtx(&timeout_task->c, &queue->tq_mutex,
     CALLOUT_RETURNUNLOCKED);
 timeout_task->q = queue;
 timeout_task->f = 0;
}
