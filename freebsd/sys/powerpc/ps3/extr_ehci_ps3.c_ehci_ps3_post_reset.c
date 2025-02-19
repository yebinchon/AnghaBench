
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ehci_softc {int dummy; } ;


 int EHCI_UM_ES_BE ;
 int EHCI_USBMODE_NOLPM ;
 int EOREAD4 (struct ehci_softc*,int ) ;
 int EOWRITE4 (struct ehci_softc*,int ,int ) ;

__attribute__((used)) static void
ehci_ps3_post_reset(struct ehci_softc *ehci_softc)
{
 uint32_t usbmode;


 usbmode = EOREAD4(ehci_softc, EHCI_USBMODE_NOLPM);
 usbmode |= EHCI_UM_ES_BE;
 EOWRITE4(ehci_softc, EHCI_USBMODE_NOLPM, usbmode);
}
