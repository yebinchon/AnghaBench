
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ums_softc {int sc_callout; int * sc_xfer; } ;


 size_t UMS_INTR_DT ;
 int usb_callout_stop (int *) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
ums_stop_rx(struct ums_softc *sc)
{
 usbd_transfer_stop(sc->sc_xfer[UMS_INTR_DT]);
 usb_callout_stop(&sc->sc_callout);
}
