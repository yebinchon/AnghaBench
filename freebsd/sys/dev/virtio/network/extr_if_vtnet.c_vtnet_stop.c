
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_tick_ch; scalar_t__ vtnet_link_active; struct ifnet* vtnet_ifp; int vtnet_dev; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 int IFF_DRV_RUNNING ;
 int VTNET_CORE_LOCK_ASSERT (struct vtnet_softc*) ;
 int callout_stop (int *) ;
 int virtio_stop (int ) ;
 int vtnet_disable_interrupts (struct vtnet_softc*) ;
 int vtnet_drain_rxtx_queues (struct vtnet_softc*) ;
 int vtnet_stop_rendezvous (struct vtnet_softc*) ;

__attribute__((used)) static void
vtnet_stop(struct vtnet_softc *sc)
{
 device_t dev;
 struct ifnet *ifp;

 dev = sc->vtnet_dev;
 ifp = sc->vtnet_ifp;

 VTNET_CORE_LOCK_ASSERT(sc);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 sc->vtnet_link_active = 0;
 callout_stop(&sc->vtnet_tick_ch);


 vtnet_disable_interrupts(sc);






 virtio_stop(dev);
 vtnet_stop_rendezvous(sc);


 vtnet_drain_rxtx_queues(sc);
}
