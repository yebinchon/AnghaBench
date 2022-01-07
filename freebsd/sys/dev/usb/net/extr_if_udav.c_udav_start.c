
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {struct udav_softc* ue_sc; } ;
struct udav_softc {int * sc_xfer; } ;


 size_t UDAV_BULK_DT_RD ;
 size_t UDAV_BULK_DT_WR ;
 size_t UDAV_INTR_DT_RD ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
udav_start(struct usb_ether *ue)
{
 struct udav_softc *sc = ue->ue_sc;




 usbd_transfer_start(sc->sc_xfer[UDAV_INTR_DT_RD]);
 usbd_transfer_start(sc->sc_xfer[UDAV_BULK_DT_RD]);
 usbd_transfer_start(sc->sc_xfer[UDAV_BULK_DT_WR]);
}
