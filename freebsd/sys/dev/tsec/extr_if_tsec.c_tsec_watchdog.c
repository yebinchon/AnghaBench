
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {scalar_t__ tsec_watchdog; struct ifnet* tsec_ifp; } ;
struct ifnet {int dummy; } ;


 int IFCOUNTER_OERRORS ;
 int TSEC_GLOBAL_LOCK_ASSERT (struct tsec_softc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int tsec_init_locked (struct tsec_softc*) ;
 int tsec_stop (struct tsec_softc*) ;

__attribute__((used)) static void
tsec_watchdog(struct tsec_softc *sc)
{
 struct ifnet *ifp;

 TSEC_GLOBAL_LOCK_ASSERT(sc);

 if (sc->tsec_watchdog == 0 || --sc->tsec_watchdog > 0)
  return;

 ifp = sc->tsec_ifp;
 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 if_printf(ifp, "watchdog timeout\n");

 tsec_stop(sc);
 tsec_init_locked(sc);
}
