
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int parent; } ;
struct xhci_softc {TYPE_1__ sc_bus; } ;


 int DPRINTF (char*) ;
 int USB_ERR_IOERROR ;
 int XHCI_CMD_HCRST ;
 int XHCI_STS_CNR ;
 int XHCI_USBCMD ;
 int XHCI_USBSTS ;
 int XREAD4 (struct xhci_softc*,int ,int ) ;
 int XWRITE4 (struct xhci_softc*,int ,int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;
 int oper ;
 int usb_pause_mtx (int *,int) ;

usb_error_t
xhci_reset_controller(struct xhci_softc *sc)
{
 uint32_t temp = 0;
 uint16_t i;

 DPRINTF("\n");


 XWRITE4(sc, oper, XHCI_USBCMD, XHCI_CMD_HCRST);

 for (i = 0; i != 100; i++) {
  usb_pause_mtx(((void*)0), hz / 100);
  temp = (XREAD4(sc, oper, XHCI_USBCMD) & XHCI_CMD_HCRST) |
      (XREAD4(sc, oper, XHCI_USBSTS) & XHCI_STS_CNR);
  if (!temp)
   break;
 }

 if (temp) {
  device_printf(sc->sc_bus.parent, "Controller "
      "reset timeout.\n");
  return (USB_ERR_IOERROR);
 }
 return (0);
}
