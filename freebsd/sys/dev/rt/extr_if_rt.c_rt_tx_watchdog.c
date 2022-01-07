
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {scalar_t__ tx_timer; int tx_watchdog_ch; int tx_watchdog_timeouts; int dev; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int IFCOUNTER_OERRORS ;
 int callout_reset (int *,int ,void (*) (void*),struct rt_softc*) ;
 int device_printf (int ,char*) ;
 int hz ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int rt_init_locked (struct rt_softc*) ;
 int rt_stop_locked (struct rt_softc*) ;

__attribute__((used)) static void
rt_tx_watchdog(void *arg)
{
 struct rt_softc *sc;
 struct ifnet *ifp;

 sc = arg;
 ifp = sc->ifp;

 if (sc->tx_timer == 0)
  return;

 if (--sc->tx_timer == 0) {
  device_printf(sc->dev, "Tx watchdog timeout: resetting\n");







  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  sc->tx_watchdog_timeouts++;
 }
 callout_reset(&sc->tx_watchdog_ch, hz, rt_tx_watchdog, sc);
}
