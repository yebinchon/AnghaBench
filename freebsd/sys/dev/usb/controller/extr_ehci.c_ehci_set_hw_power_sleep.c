
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_bus {int dummy; } ;
struct ehci_softc {int dummy; } ;


 struct ehci_softc* EHCI_BUS2SC (struct usb_bus*) ;



 int ehci_resume (struct ehci_softc*) ;
 int ehci_suspend (struct ehci_softc*) ;

__attribute__((used)) static void
ehci_set_hw_power_sleep(struct usb_bus *bus, uint32_t state)
{
 struct ehci_softc *sc = EHCI_BUS2SC(bus);

 switch (state) {
 case 128:
 case 129:
  ehci_suspend(sc);
  break;
 case 130:
  ehci_resume(sc);
  break;
 default:
  break;
 }
}
