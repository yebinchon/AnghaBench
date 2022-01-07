
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_note; } ;
struct kqueue {int kq_state; int kq_sigio; TYPE_1__ kq_sel; } ;


 int KQ_ASYNC ;
 int KQ_OWNED (struct kqueue*) ;
 int KQ_SEL ;
 int KQ_SLEEP ;
 int PSOCK ;
 int SEL_WAITING (TYPE_1__*) ;
 int SIGIO ;
 int knlist_empty (int *) ;
 int kqueue_schedtask (struct kqueue*) ;
 int pgsigio (int *,int ,int ) ;
 int selwakeuppri (TYPE_1__*,int ) ;
 int wakeup (struct kqueue*) ;

__attribute__((used)) static void
kqueue_wakeup(struct kqueue *kq)
{
 KQ_OWNED(kq);

 if ((kq->kq_state & KQ_SLEEP) == KQ_SLEEP) {
  kq->kq_state &= ~KQ_SLEEP;
  wakeup(kq);
 }
 if ((kq->kq_state & KQ_SEL) == KQ_SEL) {
  selwakeuppri(&kq->kq_sel, PSOCK);
  if (!SEL_WAITING(&kq->kq_sel))
   kq->kq_state &= ~KQ_SEL;
 }
 if (!knlist_empty(&kq->kq_sel.si_note))
  kqueue_schedtask(kq);
 if ((kq->kq_state & KQ_ASYNC) == KQ_ASYNC) {
  pgsigio(&kq->kq_sigio, SIGIO, 0);
 }
}
