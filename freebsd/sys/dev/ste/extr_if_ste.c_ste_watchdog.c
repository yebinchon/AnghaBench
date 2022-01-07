
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ste_softc {scalar_t__ ste_timer; struct ifnet* ste_ifp; } ;
struct ifnet {int if_snd; int if_drv_flags; } ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int STE_LOCK_ASSERT (struct ste_softc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int ste_init_locked (struct ste_softc*) ;
 int ste_rxeof (struct ste_softc*,int) ;
 int ste_start_locked (struct ifnet*) ;
 int ste_txeoc (struct ste_softc*) ;
 int ste_txeof (struct ste_softc*) ;

__attribute__((used)) static void
ste_watchdog(struct ste_softc *sc)
{
 struct ifnet *ifp;

 ifp = sc->ste_ifp;
 STE_LOCK_ASSERT(sc);

 if (sc->ste_timer == 0 || --sc->ste_timer)
  return;

 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 if_printf(ifp, "watchdog timeout\n");

 ste_txeof(sc);
 ste_txeoc(sc);
 ste_rxeof(sc, -1);
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 ste_init_locked(sc);

 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  ste_start_locked(ifp);
}
