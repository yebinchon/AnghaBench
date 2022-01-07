
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb {int flags; struct ahc_softc* ahc_softc; } ;
struct ahc_softc {int timedout_scbs; } ;


 int LIST_INSERT_HEAD (int *,struct scb*,int ) ;
 int SCB_ACTIVE ;
 int SCB_TIMEDOUT ;
 int ahc_wakeup_recovery_thread (struct ahc_softc*) ;
 int timedout_links ;

void
ahc_timeout(struct scb *scb)
{
 struct ahc_softc *ahc;

 ahc = scb->ahc_softc;
 if ((scb->flags & SCB_ACTIVE) != 0) {
  if ((scb->flags & SCB_TIMEDOUT) == 0) {
   LIST_INSERT_HEAD(&ahc->timedout_scbs, scb,
      timedout_links);
   scb->flags |= SCB_TIMEDOUT;
  }
  ahc_wakeup_recovery_thread(ahc);
 }
}
