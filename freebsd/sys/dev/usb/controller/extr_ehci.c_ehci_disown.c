
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int ehci_softc_t ;


 int DPRINTF (char*,int ,int ) ;
 int EHCI_PORTSC (int ) ;
 int EHCI_PS_CLEAR ;
 int EHCI_PS_PO ;
 int EOREAD4 (int *,int) ;
 int EOWRITE4 (int *,int,int) ;

__attribute__((used)) static void
ehci_disown(ehci_softc_t *sc, uint16_t index, uint8_t lowspeed)
{
 uint32_t port;
 uint32_t v;

 DPRINTF("index=%d lowspeed=%d\n", index, lowspeed);

 port = EHCI_PORTSC(index);
 v = EOREAD4(sc, port) & ~EHCI_PS_CLEAR;
 EOWRITE4(sc, port, v | EHCI_PS_PO);
}
