
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct lance_softc {int sc_conf3; int sc_addr; int (* sc_rdcsr ) (struct lance_softc*,int ) ;int (* sc_hwinit ) (struct lance_softc*) ;int (* sc_start_locked ) (struct lance_softc*) ;int sc_wdog_ch; scalar_t__ sc_wdog_timer; int (* sc_wrcsr ) (struct lance_softc*,int ,int) ;int (* sc_meminit ) (struct lance_softc*) ;int sc_enaddr; int (* sc_mediachange ) (struct lance_softc*) ;int (* sc_hwreset ) (struct lance_softc*) ;struct ifnet* sc_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int DELAY (int) ;
 int ETHER_ADDR_LEN ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int LE_C0_IDON ;
 int LE_C0_INEA ;
 int LE_C0_INIT ;
 int LE_C0_STOP ;
 int LE_C0_STRT ;
 int LE_CSR0 ;
 int LE_CSR1 ;
 int LE_CSR2 ;
 int LE_CSR3 ;
 int LE_INITADDR (struct lance_softc*) ;
 int LE_LOCK_ASSERT (struct lance_softc*,int ) ;
 int MA_OWNED ;
 int callout_reset (int *,int ,int ,struct lance_softc*) ;
 int hz ;
 int if_printf (struct ifnet*,char*) ;
 int lance_watchdog ;
 int memcpy (int ,int ,int ) ;
 int stub1 (struct lance_softc*,int ,int) ;
 int stub10 (struct lance_softc*,int ) ;
 int stub11 (struct lance_softc*,int ,int) ;
 int stub12 (struct lance_softc*) ;
 int stub13 (struct lance_softc*) ;
 int stub2 (struct lance_softc*) ;
 int stub3 (struct lance_softc*,int ,int) ;
 int stub4 (struct lance_softc*) ;
 int stub5 (struct lance_softc*) ;
 int stub6 (struct lance_softc*,int ,int) ;
 int stub7 (struct lance_softc*,int ,int) ;
 int stub8 (struct lance_softc*,int ,int) ;
 int stub9 (struct lance_softc*,int ) ;

void
lance_init_locked(struct lance_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;
 u_long a;
 int timo;

 LE_LOCK_ASSERT(sc, MA_OWNED);

 (*sc->sc_wrcsr)(sc, LE_CSR0, LE_C0_STOP);
 DELAY(100);


 if (sc->sc_hwreset)
  (*sc->sc_hwreset)(sc);


 (*sc->sc_wrcsr)(sc, LE_CSR3, sc->sc_conf3);


 if (sc->sc_mediachange)
  (void)(*sc->sc_mediachange)(sc);





 memcpy(sc->sc_enaddr, IF_LLADDR(ifp), ETHER_ADDR_LEN);


 (*sc->sc_meminit)(sc);


 a = sc->sc_addr + LE_INITADDR(sc);
 (*sc->sc_wrcsr)(sc, LE_CSR1, a & 0xffff);
 (*sc->sc_wrcsr)(sc, LE_CSR2, a >> 16);


 DELAY(100);
 (*sc->sc_wrcsr)(sc, LE_CSR0, LE_C0_INIT);


 for (timo = 100000; timo; timo--)
  if ((*sc->sc_rdcsr)(sc, LE_CSR0) & LE_C0_IDON)
   break;

 if ((*sc->sc_rdcsr)(sc, LE_CSR0) & LE_C0_IDON) {

  (*sc->sc_wrcsr)(sc, LE_CSR0, LE_C0_INEA | LE_C0_STRT);
  ifp->if_drv_flags |= IFF_DRV_RUNNING;
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
  sc->sc_wdog_timer = 0;
  callout_reset(&sc->sc_wdog_ch, hz, lance_watchdog, sc);
  (*sc->sc_start_locked)(sc);
 } else
  if_printf(ifp, "controller failed to initialize\n");

 if (sc->sc_hwinit)
  (*sc->sc_hwinit)(sc);
}
