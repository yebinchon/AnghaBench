
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mprsas_softc {int flags; int sc; int sim; } ;


 int MPRSAS_QUEUE_FROZEN ;
 int MPR_INFO ;
 int mpr_dprint (int ,int ,char*) ;
 int xpt_release_simq (int ,int) ;

void
mprsas_release_simq_reinit(struct mprsas_softc *sassc)
{
 if (sassc->flags & MPRSAS_QUEUE_FROZEN) {
  sassc->flags &= ~MPRSAS_QUEUE_FROZEN;
  xpt_release_simq(sassc->sim, 1);
  mpr_dprint(sassc->sc, MPR_INFO, "Unfreezing SIM queue\n");
 }
}
