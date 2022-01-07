
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int parent; } ;
struct xhci_softc {int sc_runt_off; int sc_door_off; TYPE_1__ sc_bus; int sc_oper_off; scalar_t__ sc_capa_off; } ;


 int DPRINTF (char*) ;
 int USB_ERR_IOERROR ;
 int XHCI_CAPLENGTH ;
 int XHCI_DBOFF ;
 int XHCI_RTSOFF ;
 int XHCI_STS_HCH ;
 int XHCI_USBCMD ;
 int XHCI_USBSTS ;
 int XREAD1 (struct xhci_softc*,int ,int ) ;
 int XREAD4 (struct xhci_softc*,int ,int ) ;
 int XWRITE4 (struct xhci_softc*,int ,int ,int ) ;
 int capa ;
 int device_printf (int ,char*) ;
 int hz ;
 int oper ;
 int usb_pause_mtx (int *,int) ;

usb_error_t
xhci_halt_controller(struct xhci_softc *sc)
{
 uint32_t temp;
 uint16_t i;

 DPRINTF("\n");

 sc->sc_capa_off = 0;
 sc->sc_oper_off = XREAD1(sc, capa, XHCI_CAPLENGTH);
 sc->sc_runt_off = XREAD4(sc, capa, XHCI_RTSOFF) & ~0xF;
 sc->sc_door_off = XREAD4(sc, capa, XHCI_DBOFF) & ~0x3;


 XWRITE4(sc, oper, XHCI_USBCMD, 0);

 for (i = 0; i != 100; i++) {
  usb_pause_mtx(((void*)0), hz / 100);
  temp = XREAD4(sc, oper, XHCI_USBSTS) & XHCI_STS_HCH;
  if (temp)
   break;
 }

 if (!temp) {
  device_printf(sc->sc_bus.parent, "Controller halt timeout.\n");
  return (USB_ERR_IOERROR);
 }
 return (0);
}
