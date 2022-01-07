
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_tick_ch; struct ifnet* vtnet_ifp; int vtnet_dev; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 int IFF_DRV_RUNNING ;
 int VTNET_CORE_LOCK_ASSERT (struct vtnet_softc*) ;
 int callout_reset (int *,int ,int ,struct vtnet_softc*) ;
 int hz ;
 int virtio_reinit_complete (int ) ;
 scalar_t__ vtnet_reinit (struct vtnet_softc*) ;
 int vtnet_stop (struct vtnet_softc*) ;
 int vtnet_tick ;
 int vtnet_update_link_status (struct vtnet_softc*) ;
 scalar_t__ vtnet_virtio_reinit (struct vtnet_softc*) ;

__attribute__((used)) static void
vtnet_init_locked(struct vtnet_softc *sc)
{
 device_t dev;
 struct ifnet *ifp;

 dev = sc->vtnet_dev;
 ifp = sc->vtnet_ifp;

 VTNET_CORE_LOCK_ASSERT(sc);

 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  return;

 vtnet_stop(sc);


 if (vtnet_virtio_reinit(sc) != 0)
  goto fail;

 if (vtnet_reinit(sc) != 0)
  goto fail;

 virtio_reinit_complete(dev);

 vtnet_update_link_status(sc);
 callout_reset(&sc->vtnet_tick_ch, hz, vtnet_tick, sc);

 return;

fail:
 vtnet_stop(sc);
}
