
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {scalar_t__ sc_state; struct ncr53c9x_ecb* sc_nexus; } ;
struct ncr53c9x_ecb {int timeout; int ch; int flags; } ;


 int ECB_ABORT ;
 int MA_OWNED ;
 int NCR_ABORT_TIMEOUT ;
 scalar_t__ NCR_CONNECTED ;
 scalar_t__ NCR_IDLE ;
 int NCR_LOCK_ASSERT (struct ncr53c9x_softc*,int ) ;
 int SEND_ABORT ;
 int callout_reset (int *,int ,int ,struct ncr53c9x_ecb*) ;
 int mstohz (int ) ;
 int ncr53c9x_callout ;
 int ncr53c9x_sched (struct ncr53c9x_softc*) ;
 int ncr53c9x_sched_msgout (int ) ;

__attribute__((used)) static void
ncr53c9x_abort(struct ncr53c9x_softc *sc, struct ncr53c9x_ecb *ecb)
{

 NCR_LOCK_ASSERT(sc, MA_OWNED);


 ecb->timeout = NCR_ABORT_TIMEOUT;
 ecb->flags |= ECB_ABORT;

 if (ecb == sc->sc_nexus) {




  if (sc->sc_state == NCR_CONNECTED)
   ncr53c9x_sched_msgout(SEND_ABORT);




  callout_reset(&ecb->ch, mstohz(ecb->timeout),
      ncr53c9x_callout, ecb);
 } else {





  if (sc->sc_state == NCR_IDLE)
   ncr53c9x_sched(sc);
 }
}
