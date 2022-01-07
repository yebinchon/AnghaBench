
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {int periodic_round; int periodic_ch; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int RT_DEBUG_PERIODIC ;
 int RT_DPRINTF (struct rt_softc*,int ,char*,int) ;
 int RT_SOFTC_LOCK (struct rt_softc*) ;
 int RT_SOFTC_UNLOCK (struct rt_softc*) ;
 int callout_reset (int *,int,int ,struct rt_softc*) ;
 int hz ;
 int rt_periodic ;
 int rt_update_raw_counters (struct rt_softc*) ;
 int rt_update_stats (struct rt_softc*) ;
 int rt_watchdog (struct rt_softc*) ;

__attribute__((used)) static void
rt_periodic_task(void *context, int pending)
{
 struct rt_softc *sc;
 struct ifnet *ifp;

 sc = context;
 ifp = sc->ifp;

 RT_DPRINTF(sc, RT_DEBUG_PERIODIC, "periodic task: round=%lu\n",
     sc->periodic_round);

 if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
  return;

 RT_SOFTC_LOCK(sc);
 sc->periodic_round++;
 rt_update_stats(sc);

 if ((sc->periodic_round % 10) == 0) {
  rt_update_raw_counters(sc);
  rt_watchdog(sc);
 }

 RT_SOFTC_UNLOCK(sc);
 callout_reset(&sc->periodic_ch, hz / 10, rt_periodic, sc);
}
