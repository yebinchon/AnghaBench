
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_softc {scalar_t__ ti_timer; int ti_flags; struct ifnet* ti_ifp; int ti_watchdog; } ;
struct ifnet {int if_drv_flags; } ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int TI_FLAG_DEBUGING ;
 int TI_LOCK_ASSERT (struct ti_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct ti_softc*) ;
 int hz ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int ti_init_locked (struct ti_softc*) ;

__attribute__((used)) static void
ti_watchdog(void *arg)
{
 struct ti_softc *sc;
 struct ifnet *ifp;

 sc = arg;
 TI_LOCK_ASSERT(sc);
 callout_reset(&sc->ti_watchdog, hz, ti_watchdog, sc);
 if (sc->ti_timer == 0 || --sc->ti_timer > 0)
  return;






 if (sc->ti_flags & TI_FLAG_DEBUGING)
  return;

 ifp = sc->ti_ifp;
 if_printf(ifp, "watchdog timeout -- resetting\n");
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 ti_init_locked(sc);

 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
}
