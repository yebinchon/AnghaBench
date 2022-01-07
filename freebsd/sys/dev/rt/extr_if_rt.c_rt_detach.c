
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {int rx_ring_count; int mem; int mem_rid; int irq; int irq_rid; int irqh; int lock; int taskqueue; int * rt_miibus; int * rx_ring; int * tx_ring; int periodic_task; int tx_done_task; int rx_done_task; int tx_watchdog_ch; int periodic_ch; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int RT_DEBUG_ANY ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;
 int RT_SOFTC_LOCK (struct rt_softc*) ;
 int RT_SOFTC_TX_RING_COUNT ;
 int RT_SOFTC_UNLOCK (struct rt_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_stop (int *) ;
 int device_delete_child (int ,int *) ;
 struct rt_softc* device_get_softc (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int rt_free_rx_ring (struct rt_softc*,int *) ;
 int rt_free_tx_ring (struct rt_softc*,int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_free (int ) ;

__attribute__((used)) static int
rt_detach(device_t dev)
{
 struct rt_softc *sc;
 struct ifnet *ifp;
 int i;

 sc = device_get_softc(dev);
 ifp = sc->ifp;

 RT_DPRINTF(sc, RT_DEBUG_ANY, "detaching\n");

 RT_SOFTC_LOCK(sc);

 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);

 callout_stop(&sc->periodic_ch);
 callout_stop(&sc->tx_watchdog_ch);

 taskqueue_drain(sc->taskqueue, &sc->rx_done_task);
 taskqueue_drain(sc->taskqueue, &sc->tx_done_task);
 taskqueue_drain(sc->taskqueue, &sc->periodic_task);


 for (i = 0; i < RT_SOFTC_TX_RING_COUNT; i++)
  rt_free_tx_ring(sc, &sc->tx_ring[i]);
 for (i = 0; i < sc->rx_ring_count; i++)
  rt_free_rx_ring(sc, &sc->rx_ring[i]);

 RT_SOFTC_UNLOCK(sc);






 ether_ifdetach(ifp);
 if_free(ifp);

 taskqueue_free(sc->taskqueue);

 mtx_destroy(&sc->lock);

 bus_generic_detach(dev);
 bus_teardown_intr(dev, sc->irq, sc->irqh);
 bus_release_resource(dev, SYS_RES_IRQ, sc->irq_rid, sc->irq);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem);

 return (0);
}
