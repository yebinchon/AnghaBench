
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vte_softc {scalar_t__ vte_watchdog_timer; struct ifnet* vte_ifp; } ;
struct ifnet {int if_snd; int if_drv_flags; } ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int VTE_LOCK_ASSERT (struct vte_softc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int vte_init_locked (struct vte_softc*) ;
 int vte_start_locked (struct vte_softc*) ;

__attribute__((used)) static void
vte_watchdog(struct vte_softc *sc)
{
 struct ifnet *ifp;

 VTE_LOCK_ASSERT(sc);

 if (sc->vte_watchdog_timer == 0 || --sc->vte_watchdog_timer)
  return;

 ifp = sc->vte_ifp;
 if_printf(sc->vte_ifp, "watchdog timeout -- resetting\n");
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 vte_init_locked(sc);
 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  vte_start_locked(sc);
}
