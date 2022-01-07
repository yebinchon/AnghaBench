
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_frozen; int vtscsi_sim; } ;


 int VTSCSI_FROZEN_NO_REQUESTS ;
 int VTSCSI_FROZEN_REQUEST_VQ_FULL ;
 int VTSCSI_INFO ;
 int VTSCSI_REQUEST ;
 int VTSCSI_REQUEST_VQ ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void
vtscsi_freeze_simq(struct vtscsi_softc *sc, int reason)
{
 int frozen;

 frozen = sc->vtscsi_frozen;

 if (reason & VTSCSI_REQUEST &&
     (sc->vtscsi_frozen & VTSCSI_FROZEN_NO_REQUESTS) == 0)
  sc->vtscsi_frozen |= VTSCSI_FROZEN_NO_REQUESTS;

 if (reason & VTSCSI_REQUEST_VQ &&
     (sc->vtscsi_frozen & VTSCSI_FROZEN_REQUEST_VQ_FULL) == 0)
  sc->vtscsi_frozen |= VTSCSI_FROZEN_REQUEST_VQ_FULL;


 if (frozen == 0 && sc->vtscsi_frozen != 0) {
  vtscsi_dprintf(sc, VTSCSI_INFO, "SIMQ frozen\n");
  xpt_freeze_simq(sc->vtscsi_sim, 1);
 }
}
