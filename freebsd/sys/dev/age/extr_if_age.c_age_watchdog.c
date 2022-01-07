
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_snd; int if_drv_flags; } ;
struct TYPE_2__ {scalar_t__ age_tx_cnt; } ;
struct age_softc {scalar_t__ age_watchdog_timer; int age_flags; struct ifnet* age_ifp; TYPE_1__ age_cdata; } ;


 int AGE_FLAG_LINK ;
 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int age_init_locked (struct age_softc*) ;
 int age_start_locked (struct ifnet*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;

__attribute__((used)) static void
age_watchdog(struct age_softc *sc)
{
 struct ifnet *ifp;

 AGE_LOCK_ASSERT(sc);

 if (sc->age_watchdog_timer == 0 || --sc->age_watchdog_timer)
  return;

 ifp = sc->age_ifp;
 if ((sc->age_flags & AGE_FLAG_LINK) == 0) {
  if_printf(sc->age_ifp, "watchdog timeout (missed link)\n");
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  age_init_locked(sc);
  return;
 }
 if (sc->age_cdata.age_tx_cnt == 0) {
  if_printf(sc->age_ifp,
      "watchdog timeout (missed Tx interrupts) -- recovering\n");
  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   age_start_locked(ifp);
  return;
 }
 if_printf(sc->age_ifp, "watchdog timeout\n");
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 age_init_locked(sc);
 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  age_start_locked(ifp);
}
