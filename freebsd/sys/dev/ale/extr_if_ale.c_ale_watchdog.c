
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_snd; int if_drv_flags; } ;
struct ale_softc {scalar_t__ ale_watchdog_timer; int ale_flags; struct ifnet* ale_ifp; } ;


 int ALE_FLAG_LINK ;
 int ALE_LOCK_ASSERT (struct ale_softc*) ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int ale_init_locked (struct ale_softc*) ;
 int ale_start_locked (struct ifnet*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;

__attribute__((used)) static void
ale_watchdog(struct ale_softc *sc)
{
 struct ifnet *ifp;

 ALE_LOCK_ASSERT(sc);

 if (sc->ale_watchdog_timer == 0 || --sc->ale_watchdog_timer)
  return;

 ifp = sc->ale_ifp;
 if ((sc->ale_flags & ALE_FLAG_LINK) == 0) {
  if_printf(sc->ale_ifp, "watchdog timeout (lost link)\n");
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  ale_init_locked(sc);
  return;
 }
 if_printf(sc->ale_ifp, "watchdog timeout -- resetting\n");
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 ale_init_locked(sc);
 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  ale_start_locked(ifp);
}
