
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mge_softc {scalar_t__ wd_timer; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int IFCOUNTER_OERRORS ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int mge_init_locked (struct mge_softc*) ;
 int mge_stop (struct mge_softc*) ;

__attribute__((used)) static void
mge_watchdog(struct mge_softc *sc)
{
 struct ifnet *ifp;

 ifp = sc->ifp;

 if (sc->wd_timer == 0 || --sc->wd_timer) {
  return;
 }

 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 if_printf(ifp, "watchdog timeout\n");

 mge_stop(sc);
 mge_init_locked(sc);
}
