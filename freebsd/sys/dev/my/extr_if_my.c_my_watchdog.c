
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_softc {scalar_t__ my_timer; struct ifnet* my_ifp; int my_watchdog; } ;
struct ifnet {int if_snd; } ;


 int IFCOUNTER_OERRORS ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int PHY_BMSR ;
 int PHY_BMSR_LINKSTAT ;
 int callout_reset (int *,int ,void (*) (void*),struct my_softc*) ;
 int hz ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int my_init_locked (struct my_softc*) ;
 int my_phy_readreg (struct my_softc*,int ) ;
 int my_reset (struct my_softc*) ;
 int my_start_locked (struct ifnet*) ;
 int my_stop (struct my_softc*) ;

__attribute__((used)) static void
my_watchdog(void *arg)
{
 struct my_softc *sc;
 struct ifnet *ifp;

 sc = arg;
 MY_LOCK_ASSERT(sc);
 callout_reset(&sc->my_watchdog, hz, my_watchdog, sc);
 if (sc->my_timer == 0 || --sc->my_timer > 0)
  return;

 ifp = sc->my_ifp;
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 if_printf(ifp, "watchdog timeout\n");
 if (!(my_phy_readreg(sc, PHY_BMSR) & PHY_BMSR_LINKSTAT))
  if_printf(ifp, "no carrier - transceiver cable problem?\n");
 my_stop(sc);
 my_reset(sc);
 my_init_locked(sc);
 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  my_start_locked(ifp);
}
