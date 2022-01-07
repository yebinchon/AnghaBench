
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_bus {int dummy; } ;
struct ohci_softc {int dummy; } ;


 struct ohci_softc* OHCI_BUS2SC (struct usb_bus*) ;



 int ohci_resume (struct ohci_softc*) ;
 int ohci_suspend (struct ohci_softc*) ;

__attribute__((used)) static void
ohci_set_hw_power_sleep(struct usb_bus *bus, uint32_t state)
{
 struct ohci_softc *sc = OHCI_BUS2SC(bus);

 switch (state) {
 case 128:
 case 129:
  ohci_suspend(sc);
  break;
 case 130:
  ohci_resume(sc);
  break;
 default:
  break;
 }
}
