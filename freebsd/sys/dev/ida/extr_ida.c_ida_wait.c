
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* done ) (struct ida_softc*) ;} ;
struct ida_softc {int flags; TYPE_1__ cmd; int lock; } ;
struct ida_qcb {void* state; } ;
typedef int bus_addr_t ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int IDA_INTERRUPTS ;
 int MA_OWNED ;
 int PRIBIO ;
 void* QCB_TIMEDOUT ;
 int dumping ;
 int hz ;
 int ida_done (struct ida_softc*,struct ida_qcb*) ;
 struct ida_qcb* idahwqcbptov (struct ida_softc*,int) ;
 int mtx_assert (int *,int ) ;
 scalar_t__ mtx_sleep (struct ida_qcb*,int *,int ,char*,int) ;
 int stub1 (struct ida_softc*) ;

__attribute__((used)) static int
ida_wait(struct ida_softc *ida, struct ida_qcb *qcb)
{
 struct ida_qcb *qcb_done = ((void*)0);
 bus_addr_t completed;
 int delay;

 if (!dumping)
  mtx_assert(&ida->lock, MA_OWNED);
 if (ida->flags & IDA_INTERRUPTS) {
  if (mtx_sleep(qcb, &ida->lock, PRIBIO, "idacmd", 5 * hz)) {
   qcb->state = QCB_TIMEDOUT;
   return (ETIMEDOUT);
  }
  return (0);
 }

again:
 delay = 5 * 1000 * 100;
 while ((completed = ida->cmd.done(ida)) == 0) {
  if (delay-- == 0) {
   qcb->state = QCB_TIMEDOUT;
   return (ETIMEDOUT);
  }
  DELAY(10);
 }

 qcb_done = idahwqcbptov(ida, completed & ~3);
 if (qcb_done != qcb)
  goto again;
 ida_done(ida, qcb);
 return (0);
}
