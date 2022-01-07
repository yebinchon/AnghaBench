
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_bus {int dummy; } ;
struct uhci_softc {int dummy; } ;


 struct uhci_softc* UHCI_BUS2SC (struct usb_bus*) ;



 int uhci_resume (struct uhci_softc*) ;
 int uhci_suspend (struct uhci_softc*) ;

__attribute__((used)) static void
uhci_set_hw_power_sleep(struct usb_bus *bus, uint32_t state)
{
 struct uhci_softc *sc = UHCI_BUS2SC(bus);

 switch (state) {
 case 128:
 case 129:
  uhci_suspend(sc);
  break;
 case 130:
  uhci_resume(sc);
  break;
 default:
  break;
 }
}
