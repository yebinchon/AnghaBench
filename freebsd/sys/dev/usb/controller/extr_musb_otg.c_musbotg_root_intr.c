
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musbotg_softc {int* sc_hub_idata; int sc_bus; } ;


 int DPRINTFN (int,char*) ;
 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int *,int ) ;
 int uhub_root_intr (int *,int*,int) ;

__attribute__((used)) static void
musbotg_root_intr(struct musbotg_softc *sc)
{
 DPRINTFN(8, "\n");

 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);


 sc->sc_hub_idata[0] = 0x02;

 uhub_root_intr(&sc->sc_bus, sc->sc_hub_idata,
     sizeof(sc->sc_hub_idata));
}
