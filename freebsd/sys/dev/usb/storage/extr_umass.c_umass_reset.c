
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umass_softc {size_t sc_last_xfer_index; int * sc_xfer; } ;


 int DPRINTF (struct umass_softc*,int ,char*) ;
 int UDMASS_GEN ;
 int umass_transfer_start (struct umass_softc*,int ) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
umass_reset(struct umass_softc *sc)
{
 DPRINTF(sc, UDMASS_GEN, "resetting device\n");




 usbd_transfer_stop(sc->sc_xfer[sc->sc_last_xfer_index]);
 umass_transfer_start(sc, 0);
}
