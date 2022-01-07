
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {int intr_pending_mask; int int_rx_done_mask; int rx_done_task; int taskqueue; int rx_process_limit; int * rx_ring; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int RT_DEBUG_RX ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;
 int RT_SOFTC_LOCK (struct rt_softc*) ;
 int RT_SOFTC_UNLOCK (struct rt_softc*) ;
 int rt_intr_enable (struct rt_softc*,int) ;
 int rt_rx_eof (struct rt_softc*,int *,int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
rt_rx_done_task(void *context, int pending)
{
 struct rt_softc *sc;
 struct ifnet *ifp;
 int again;

 sc = context;
 ifp = sc->ifp;

 RT_DPRINTF(sc, RT_DEBUG_RX, "Rx done task\n");

 if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
  return;

 sc->intr_pending_mask &= ~sc->int_rx_done_mask;

 again = rt_rx_eof(sc, &sc->rx_ring[0], sc->rx_process_limit);

 RT_SOFTC_LOCK(sc);

 if ((sc->intr_pending_mask & sc->int_rx_done_mask) || again) {
  RT_DPRINTF(sc, RT_DEBUG_RX,
      "Rx done task: scheduling again\n");
  taskqueue_enqueue(sc->taskqueue, &sc->rx_done_task);
 } else {
  rt_intr_enable(sc, sc->int_rx_done_mask);
 }

 RT_SOFTC_UNLOCK(sc);
}
