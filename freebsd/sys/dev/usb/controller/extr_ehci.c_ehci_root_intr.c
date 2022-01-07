
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int* sc_hub_idata; int sc_noport; int sc_bus; } ;
typedef TYPE_1__ ehci_softc_t ;


 int DPRINTF (char*,int) ;
 int EHCI_PORTSC (int) ;
 int EHCI_PS_CLEAR ;
 int EOREAD4 (TYPE_1__*,int ) ;
 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int *,int ) ;
 int memset (int*,int ,int) ;
 int uhub_root_intr (int *,int*,int) ;

__attribute__((used)) static void
ehci_root_intr(ehci_softc_t *sc)
{
 uint16_t i;
 uint16_t m;

 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);


 memset(sc->sc_hub_idata, 0, sizeof(sc->sc_hub_idata));


 m = (sc->sc_noport + 1);
 if (m > (8 * sizeof(sc->sc_hub_idata))) {
  m = (8 * sizeof(sc->sc_hub_idata));
 }
 for (i = 1; i < m; i++) {

  if (EOREAD4(sc, EHCI_PORTSC(i)) & EHCI_PS_CLEAR) {
   sc->sc_hub_idata[i / 8] |= 1 << (i % 8);
   DPRINTF("port %d changed\n", i);
  }
 }
 uhub_root_intr(&sc->sc_bus, sc->sc_hub_idata,
     sizeof(sc->sc_hub_idata));
}
