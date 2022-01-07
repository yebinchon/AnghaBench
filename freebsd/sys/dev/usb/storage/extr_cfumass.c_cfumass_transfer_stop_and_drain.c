
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct cfumass_softc {int * sc_xfer; } ;


 int CFUMASS_LOCK (struct cfumass_softc*) ;
 int CFUMASS_UNLOCK (struct cfumass_softc*) ;
 int usbd_transfer_drain (int ) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
cfumass_transfer_stop_and_drain(struct cfumass_softc *sc, uint8_t xfer_index)
{

 usbd_transfer_stop(sc->sc_xfer[xfer_index]);
 CFUMASS_UNLOCK(sc);
 usbd_transfer_drain(sc->sc_xfer[xfer_index]);
 CFUMASS_LOCK(sc);
}
