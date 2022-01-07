
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ehci_softc {int dummy; } ;


 int EHCI_CMD_IAAD ;
 int EHCI_USBCMD ;
 int EOREAD4 (struct ehci_softc*,int ) ;
 int EOWRITE4 (struct ehci_softc*,int ,int) ;

__attribute__((used)) static void
ehci_doorbell_async(struct ehci_softc *sc)
{
 uint32_t temp;
 temp = EOREAD4(sc, EHCI_USBCMD);
 if (!(temp & EHCI_CMD_IAAD))
  EOWRITE4(sc, EHCI_USBCMD, temp | EHCI_CMD_IAAD);
}
