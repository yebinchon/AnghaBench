
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct xhci_softc {int* sc_hub_idata; int sc_noport; int sc_bus; } ;


 int DPRINTF (char*,int) ;
 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int *,int ) ;
 int XHCI_PORTSC (int) ;
 int XHCI_PS_CEC ;
 int XHCI_PS_CSC ;
 int XHCI_PS_OCC ;
 int XHCI_PS_PEC ;
 int XHCI_PS_PLC ;
 int XHCI_PS_PRC ;
 int XHCI_PS_WRC ;
 int XREAD4 (struct xhci_softc*,int ,int ) ;
 int memset (int*,int ,int) ;
 int oper ;
 int uhub_root_intr (int *,int*,int) ;

__attribute__((used)) static void
xhci_root_intr(struct xhci_softc *sc)
{
 uint16_t i;

 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);


 memset(sc->sc_hub_idata, 0, sizeof(sc->sc_hub_idata));

 for (i = 1; i <= sc->sc_noport; i++) {

  if (XREAD4(sc, oper, XHCI_PORTSC(i)) & (
      XHCI_PS_CSC | XHCI_PS_PEC |
      XHCI_PS_OCC | XHCI_PS_WRC |
      XHCI_PS_PRC | XHCI_PS_PLC |
      XHCI_PS_CEC)) {
   sc->sc_hub_idata[i / 8] |= 1 << (i % 8);
   DPRINTF("port %d changed\n", i);
  }
 }
 uhub_root_intr(&sc->sc_bus, sc->sc_hub_idata,
     sizeof(sc->sc_hub_idata));
}
