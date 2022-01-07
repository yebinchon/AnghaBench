
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nge_softc {scalar_t__ nge_watchdog_timer; struct ifnet* nge_ifp; } ;
struct ifnet {int if_snd; int if_drv_flags; } ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int NGE_LOCK_ASSERT (struct nge_softc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int nge_init_locked (struct nge_softc*) ;
 int nge_start_locked (struct ifnet*) ;

__attribute__((used)) static void
nge_watchdog(struct nge_softc *sc)
{
 struct ifnet *ifp;

 NGE_LOCK_ASSERT(sc);

 if (sc->nge_watchdog_timer == 0 || --sc->nge_watchdog_timer)
  return;

 ifp = sc->nge_ifp;
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 if_printf(ifp, "watchdog timeout\n");

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 nge_init_locked(sc);

 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  nge_start_locked(ifp);
}
