
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int* sc_hub_idata; int sc_noport; int sc_bus; } ;
typedef TYPE_1__ ohci_softc_t ;


 int DPRINTF (char*,...) ;
 int MA_OWNED ;
 int OHCI_RH_PORT_STATUS (int) ;
 int OHCI_RH_STATUS ;
 int OREAD4 (TYPE_1__*,int ) ;
 int USB_BUS_LOCK_ASSERT (int *,int ) ;
 int memset (int*,int ,int) ;
 int uhub_root_intr (int *,int*,int) ;

__attribute__((used)) static void
ohci_root_intr(ohci_softc_t *sc)
{
 uint32_t hstatus;
 uint16_t i;
 uint16_t m;

 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);


 memset(sc->sc_hub_idata, 0, sizeof(sc->sc_hub_idata));

 hstatus = OREAD4(sc, OHCI_RH_STATUS);
 DPRINTF("sc=%p hstatus=0x%08x\n",
     sc, hstatus);


 m = (sc->sc_noport + 1);
 if (m > (8 * sizeof(sc->sc_hub_idata))) {
  m = (8 * sizeof(sc->sc_hub_idata));
 }
 for (i = 1; i < m; i++) {

  if (OREAD4(sc, OHCI_RH_PORT_STATUS(i)) >> 16) {
   sc->sc_hub_idata[i / 8] |= 1 << (i % 8);
   DPRINTF("port %d changed\n", i);
  }
 }

 uhub_root_intr(&sc->sc_bus, sc->sc_hub_idata,
     sizeof(sc->sc_hub_idata));
}
