
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {scalar_t__ sc_watchdog_timer; struct ifnet* sc_ifp; } ;
struct ifnet {int if_snd; int if_drv_flags; } ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int STGE_LOCK_ASSERT (struct stge_softc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int stge_init_locked (struct stge_softc*) ;
 int stge_start_locked (struct ifnet*) ;

__attribute__((used)) static void
stge_watchdog(struct stge_softc *sc)
{
 struct ifnet *ifp;

 STGE_LOCK_ASSERT(sc);

 if (sc->sc_watchdog_timer == 0 || --sc->sc_watchdog_timer)
  return;

 ifp = sc->sc_ifp;
 if_printf(sc->sc_ifp, "device timeout\n");
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 stge_init_locked(sc);
 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  stge_start_locked(ifp);
}
