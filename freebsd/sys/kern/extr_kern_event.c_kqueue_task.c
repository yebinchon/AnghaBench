
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct kqueue {int kq_state; TYPE_1__ kq_sel; } ;


 int KNOTE_LOCKED (int *,int ) ;
 int KQ_GLOBAL_LOCK (int *,int) ;
 int KQ_GLOBAL_UNLOCK (int *,int) ;
 int KQ_LOCK (struct kqueue*) ;
 int KQ_TASKDRAIN ;
 int KQ_TASKSCHED ;
 int KQ_UNLOCK (struct kqueue*) ;
 int kq_global ;
 int wakeup (int*) ;

__attribute__((used)) static void
kqueue_task(void *arg, int pending)
{
 struct kqueue *kq;
 int haskqglobal;

 haskqglobal = 0;
 kq = arg;

 KQ_GLOBAL_LOCK(&kq_global, haskqglobal);
 KQ_LOCK(kq);

 KNOTE_LOCKED(&kq->kq_sel.si_note, 0);

 kq->kq_state &= ~KQ_TASKSCHED;
 if ((kq->kq_state & KQ_TASKDRAIN) == KQ_TASKDRAIN) {
  wakeup(&kq->kq_state);
 }
 KQ_UNLOCK(kq);
 KQ_GLOBAL_UNLOCK(&kq_global, haskqglobal);
}
