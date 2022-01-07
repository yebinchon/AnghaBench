
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_softc {scalar_t__ sc_wdog_timer; int sc_wdog_ch; struct ifnet* sc_ifp; } ;
struct ifnet {int dummy; } ;


 int IFCOUNTER_OERRORS ;
 int LE_LOCK_ASSERT (struct lance_softc*,int ) ;
 int MA_OWNED ;
 int callout_reset (int *,int ,void (*) (void*),struct lance_softc*) ;
 int hz ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int lance_init_locked (struct lance_softc*) ;

__attribute__((used)) static void
lance_watchdog(void *xsc)
{
 struct lance_softc *sc = (struct lance_softc *)xsc;
 struct ifnet *ifp = sc->sc_ifp;

 LE_LOCK_ASSERT(sc, MA_OWNED);

 if (sc->sc_wdog_timer == 0 || --sc->sc_wdog_timer != 0) {
  callout_reset(&sc->sc_wdog_ch, hz, lance_watchdog, sc);
  return;
 }

 if_printf(ifp, "device timeout\n");
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 lance_init_locked(sc);
}
