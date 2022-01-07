
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uss820dci_softc {int dummy; } ;
struct usb_bus {int dummy; } ;





 struct uss820dci_softc* USS820_DCI_BUS2SC (struct usb_bus*) ;
 int uss820dci_resume (struct uss820dci_softc*) ;
 int uss820dci_suspend (struct uss820dci_softc*) ;
 int uss820dci_uninit (struct uss820dci_softc*) ;

__attribute__((used)) static void
uss820dci_set_hw_power_sleep(struct usb_bus *bus, uint32_t state)
{
 struct uss820dci_softc *sc = USS820_DCI_BUS2SC(bus);

 switch (state) {
 case 128:
  uss820dci_suspend(sc);
  break;
 case 129:
  uss820dci_uninit(sc);
  break;
 case 130:
  uss820dci_resume(sc);
  break;
 default:
  break;
 }
}
