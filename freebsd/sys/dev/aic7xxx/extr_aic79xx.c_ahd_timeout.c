
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb {int flags; struct ahd_softc* ahd_softc; } ;
struct ahd_softc {int timedout_scbs; } ;


 int LIST_INSERT_HEAD (int *,struct scb*,int ) ;
 int SCB_ACTIVE ;
 int SCB_TIMEDOUT ;
 int ahd_wakeup_recovery_thread (struct ahd_softc*) ;
 int timedout_links ;

void
ahd_timeout(struct scb *scb)
{
 struct ahd_softc *ahd;

 ahd = scb->ahd_softc;
 if ((scb->flags & SCB_ACTIVE) != 0) {
  if ((scb->flags & SCB_TIMEDOUT) == 0) {
   LIST_INSERT_HEAD(&ahd->timedout_scbs, scb,
      timedout_links);
   scb->flags |= SCB_TIMEDOUT;
  }
  ahd_wakeup_recovery_thread(ahd);
 }
}
