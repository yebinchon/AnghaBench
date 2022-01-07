
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_snd; int if_drv_flags; } ;
struct bfe_softc {scalar_t__ bfe_watchdog_timer; int bfe_dev; struct ifnet* bfe_ifp; } ;


 int BFE_LOCK_ASSERT (struct bfe_softc*) ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int bfe_init_locked (struct bfe_softc*) ;
 int bfe_start_locked (struct ifnet*) ;
 int device_printf (int ,char*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;

__attribute__((used)) static void
bfe_watchdog(struct bfe_softc *sc)
{
 struct ifnet *ifp;

 BFE_LOCK_ASSERT(sc);

 if (sc->bfe_watchdog_timer == 0 || --sc->bfe_watchdog_timer)
  return;

 ifp = sc->bfe_ifp;

 device_printf(sc->bfe_dev, "watchdog timeout -- resetting\n");

 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 bfe_init_locked(sc);

 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  bfe_start_locked(ifp);
}
