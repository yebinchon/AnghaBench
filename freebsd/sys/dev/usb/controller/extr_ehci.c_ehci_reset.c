
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
struct TYPE_7__ {int bdev; } ;
struct TYPE_8__ {TYPE_1__ sc_bus; int (* sc_vendor_post_reset ) (TYPE_2__*) ;} ;
typedef TYPE_2__ ehci_softc_t ;


 int EHCI_CMD_HCRESET ;
 int EHCI_USBCMD ;
 int EOREAD4 (TYPE_2__*,int ) ;
 int EOWRITE4 (TYPE_2__*,int ,int) ;
 int USB_ERR_IOERROR ;
 int device_printf (int ,char*) ;
 int hz ;
 int stub1 (TYPE_2__*) ;
 int usb_pause_mtx (int *,int) ;

usb_error_t
ehci_reset(ehci_softc_t *sc)
{
 uint32_t hcr;
 int i;

 EOWRITE4(sc, EHCI_USBCMD, EHCI_CMD_HCRESET);
 for (i = 0; i < 100; i++) {
  usb_pause_mtx(((void*)0), hz / 128);
  hcr = EOREAD4(sc, EHCI_USBCMD) & EHCI_CMD_HCRESET;
  if (!hcr) {
   if (sc->sc_vendor_post_reset != ((void*)0))
    sc->sc_vendor_post_reset(sc);
   return (0);
  }
 }
 device_printf(sc->sc_bus.bdev, "reset timeout\n");
 return (USB_ERR_IOERROR);
}
