
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqueue {int kq_state; int kq_task; } ;


 int KASSERT (int,char*) ;
 int KQ_OWNED (struct kqueue*) ;
 int KQ_TASKDRAIN ;
 int KQ_TASKSCHED ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_kqueue_ctx ;

__attribute__((used)) static void
kqueue_schedtask(struct kqueue *kq)
{

 KQ_OWNED(kq);
 KASSERT(((kq->kq_state & KQ_TASKDRAIN) != KQ_TASKDRAIN),
     ("scheduling kqueue task while draining"));

 if ((kq->kq_state & KQ_TASKSCHED) != KQ_TASKSCHED) {
  taskqueue_enqueue(taskqueue_kqueue_ctx, &kq->kq_task);
  kq->kq_state |= KQ_TASKSCHED;
 }
}
