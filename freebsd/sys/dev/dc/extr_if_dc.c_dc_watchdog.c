
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_snd; int if_drv_flags; } ;
struct dc_softc {scalar_t__ dc_wdog_timer; int dc_dev; struct ifnet* dc_ifp; int dc_wdog_ch; } ;


 int DC_LOCK_ASSERT (struct dc_softc*) ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int callout_reset (int *,int ,void (*) (void*),struct dc_softc*) ;
 int dc_init_locked (struct dc_softc*) ;
 int dc_start_locked (struct ifnet*) ;
 int device_printf (int ,char*) ;
 int hz ;
 int if_inc_counter (struct ifnet*,int ,int) ;

__attribute__((used)) static void
dc_watchdog(void *xsc)
{
 struct dc_softc *sc = xsc;
 struct ifnet *ifp;

 DC_LOCK_ASSERT(sc);

 if (sc->dc_wdog_timer == 0 || --sc->dc_wdog_timer != 0) {
  callout_reset(&sc->dc_wdog_ch, hz, dc_watchdog, sc);
  return;
 }

 ifp = sc->dc_ifp;
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 device_printf(sc->dc_dev, "watchdog timeout\n");

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 dc_init_locked(sc);

 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  dc_start_locked(ifp);
}
