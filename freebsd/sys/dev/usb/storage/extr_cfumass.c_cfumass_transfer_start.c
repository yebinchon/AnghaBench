
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct cfumass_softc {int * sc_xfer; } ;


 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
cfumass_transfer_start(struct cfumass_softc *sc, uint8_t xfer_index)
{

 usbd_transfer_start(sc->sc_xfer[xfer_index]);
}
