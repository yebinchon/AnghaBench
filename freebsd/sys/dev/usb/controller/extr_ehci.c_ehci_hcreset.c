
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
struct TYPE_7__ {int bdev; } ;
struct TYPE_8__ {TYPE_1__ sc_bus; } ;
typedef TYPE_2__ ehci_softc_t ;


 int EHCI_STS_HCH ;
 int EHCI_USBCMD ;
 int EHCI_USBSTS ;
 int EOREAD4 (TYPE_2__*,int ) ;
 int EOWRITE4 (TYPE_2__*,int ,int ) ;
 int device_printf (int ,char*) ;
 int ehci_reset (TYPE_2__*) ;
 int hz ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
ehci_hcreset(ehci_softc_t *sc)
{
 uint32_t hcr;
 int i;

 EOWRITE4(sc, EHCI_USBCMD, 0);
 for (i = 0; i < 100; i++) {
  usb_pause_mtx(((void*)0), hz / 128);
  hcr = EOREAD4(sc, EHCI_USBSTS) & EHCI_STS_HCH;
  if (hcr)
   break;
 }
 if (!hcr)





  device_printf(sc->sc_bus.bdev, "stop timeout\n");

 return (ehci_reset(sc));
}
