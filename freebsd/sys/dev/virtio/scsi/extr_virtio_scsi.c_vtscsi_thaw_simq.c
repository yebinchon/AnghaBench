
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_frozen; } ;


 int VTSCSI_FROZEN_NO_REQUESTS ;
 int VTSCSI_FROZEN_REQUEST_VQ_FULL ;
 int VTSCSI_INFO ;
 int VTSCSI_REQUEST ;
 int VTSCSI_REQUEST_VQ ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*) ;

__attribute__((used)) static int
vtscsi_thaw_simq(struct vtscsi_softc *sc, int reason)
{
 int thawed;

 if (sc->vtscsi_frozen == 0 || reason == 0)
  return (0);

 if (reason & VTSCSI_REQUEST &&
     sc->vtscsi_frozen & VTSCSI_FROZEN_NO_REQUESTS)
  sc->vtscsi_frozen &= ~VTSCSI_FROZEN_NO_REQUESTS;

 if (reason & VTSCSI_REQUEST_VQ &&
     sc->vtscsi_frozen & VTSCSI_FROZEN_REQUEST_VQ_FULL)
  sc->vtscsi_frozen &= ~VTSCSI_FROZEN_REQUEST_VQ_FULL;

 thawed = sc->vtscsi_frozen == 0;
 if (thawed != 0)
  vtscsi_dprintf(sc, VTSCSI_INFO, "SIMQ thawed\n");

 return (thawed);
}
