
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_softc {int (* sc_wrcsr ) (struct lance_softc*,int ,int ) ;scalar_t__ sc_wdog_timer; int sc_wdog_ch; struct ifnet* sc_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int LE_C0_STOP ;
 int LE_CSR0 ;
 int LE_LOCK_ASSERT (struct lance_softc*,int ) ;
 int MA_OWNED ;
 int callout_stop (int *) ;
 int stub1 (struct lance_softc*,int ,int ) ;

__attribute__((used)) static void
lance_stop(struct lance_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;

 LE_LOCK_ASSERT(sc, MA_OWNED);




 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 callout_stop(&sc->sc_wdog_ch);
 sc->sc_wdog_timer = 0;

 (*sc->sc_wrcsr)(sc, LE_CSR0, LE_C0_STOP);
}
