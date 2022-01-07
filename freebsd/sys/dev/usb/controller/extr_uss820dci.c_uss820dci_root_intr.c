
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uss820dci_softc {int* sc_hub_idata; int sc_bus; } ;


 int DPRINTFN (int,char*) ;
 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int *,int ) ;
 int uhub_root_intr (int *,int*,int) ;

__attribute__((used)) static void
uss820dci_root_intr(struct uss820dci_softc *sc)
{
 DPRINTFN(9, "\n");

 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);


 sc->sc_hub_idata[0] = 0x02;

 uhub_root_intr(&sc->sc_bus, sc->sc_hub_idata,
     sizeof(sc->sc_hub_idata));
}
