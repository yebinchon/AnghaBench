
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct umass_softc {size_t sc_last_xfer_index; scalar_t__* sc_xfer; } ;


 int DPRINTF (struct umass_softc*,int ,char*,size_t) ;
 int UDMASS_GEN ;
 int umass_cancel_ccb (struct umass_softc*) ;
 int usbd_transfer_start (scalar_t__) ;

__attribute__((used)) static void
umass_transfer_start(struct umass_softc *sc, uint8_t xfer_index)
{
 DPRINTF(sc, UDMASS_GEN, "transfer index = "
     "%d\n", xfer_index);

 if (sc->sc_xfer[xfer_index]) {
  sc->sc_last_xfer_index = xfer_index;
  usbd_transfer_start(sc->sc_xfer[xfer_index]);
 } else {
  umass_cancel_ccb(sc);
 }
}
