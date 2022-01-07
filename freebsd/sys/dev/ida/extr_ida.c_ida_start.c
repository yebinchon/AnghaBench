
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* submit ) (struct ida_softc*,struct ida_qcb*) ;scalar_t__ (* fifo_full ) (struct ida_softc*) ;} ;
struct ida_softc {TYPE_1__ cmd; int qactive; int ch; int qcb_queue; int lock; } ;
struct ida_qcb {int state; } ;
struct TYPE_4__ {int stqe; } ;


 int MA_OWNED ;
 int QCB_ACTIVE ;
 struct ida_qcb* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int callout_reset (int *,int,int ,struct ida_softc*) ;
 int dumping ;
 int hz ;
 int ida_timeout ;
 TYPE_2__ link ;
 int mtx_assert (int *,int ) ;
 scalar_t__ stub1 (struct ida_softc*) ;
 int stub2 (struct ida_softc*,struct ida_qcb*) ;

__attribute__((used)) static void
ida_start(struct ida_softc *ida)
{
 struct ida_qcb *qcb;

 if (!dumping)
  mtx_assert(&ida->lock, MA_OWNED);
 while ((qcb = STAILQ_FIRST(&ida->qcb_queue)) != ((void*)0)) {
  if (ida->cmd.fifo_full(ida))
   break;
  STAILQ_REMOVE_HEAD(&ida->qcb_queue, link.stqe);






  if (!ida->qactive && !dumping)
   callout_reset(&ida->ch, hz * 5, ida_timeout, ida);
  ida->qactive++;

  qcb->state = QCB_ACTIVE;
  ida->cmd.submit(ida, qcb);
 }
}
