
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpssas_softc {int flags; int sc; int sim; } ;


 int MPSSAS_QUEUE_FROZEN ;
 int MPS_INFO ;
 int mps_dprint (int ,int ,char*) ;
 int xpt_release_simq (int ,int) ;

void
mpssas_release_simq_reinit(struct mpssas_softc *sassc)
{
 if (sassc->flags & MPSSAS_QUEUE_FROZEN) {
  sassc->flags &= ~MPSSAS_QUEUE_FROZEN;
  xpt_release_simq(sassc->sim, 1);
  mps_dprint(sassc->sc, MPS_INFO, "Unfreezing SIM queue\n");
 }
}
