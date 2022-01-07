
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xhci_softc {int dummy; } ;
struct usb_bus {int dummy; } ;


 int DPRINTF (char*) ;



 struct xhci_softc* XHCI_BUS2SC (struct usb_bus*) ;
 int xhci_halt_controller (struct xhci_softc*) ;
 int xhci_reset_controller (struct xhci_softc*) ;
 int xhci_start_controller (struct xhci_softc*) ;

__attribute__((used)) static void
xhci_set_hw_power_sleep(struct usb_bus *bus, uint32_t state)
{
 struct xhci_softc *sc = XHCI_BUS2SC(bus);

 switch (state) {
 case 128:
  DPRINTF("Stopping the XHCI\n");
  xhci_halt_controller(sc);
  xhci_reset_controller(sc);
  break;
 case 129:
  DPRINTF("Stopping the XHCI\n");
  xhci_halt_controller(sc);
  xhci_reset_controller(sc);
  break;
 case 130:
  DPRINTF("Starting the XHCI\n");
  xhci_start_controller(sc);
  break;
 default:
  break;
 }
}
