
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_softc {int vr_mtx; scalar_t__ vr_res; int vr_res_id; int vr_res_type; scalar_t__ vr_irq; scalar_t__ vr_intrhand; scalar_t__ vr_miibus; int vr_inttask; int vr_stat_callout; int vr_flags; struct ifnet* vr_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef int device_t ;


 int IFCAP_POLLING ;
 int KASSERT (int ,char*) ;
 int SYS_RES_IRQ ;
 int VR_F_DETACHED ;
 int VR_LOCK (struct vr_softc*) ;
 int VR_UNLOCK (struct vr_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,scalar_t__) ;
 struct vr_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_fast ;
 int vr_dma_free (struct vr_softc*) ;
 int vr_stop (struct vr_softc*) ;

__attribute__((used)) static int
vr_detach(device_t dev)
{
 struct vr_softc *sc = device_get_softc(dev);
 struct ifnet *ifp = sc->vr_ifp;

 KASSERT(mtx_initialized(&sc->vr_mtx), ("vr mutex not initialized"));







 if (device_is_attached(dev)) {
  VR_LOCK(sc);
  sc->vr_flags |= VR_F_DETACHED;
  vr_stop(sc);
  VR_UNLOCK(sc);
  callout_drain(&sc->vr_stat_callout);
  taskqueue_drain(taskqueue_fast, &sc->vr_inttask);
  ether_ifdetach(ifp);
 }
 if (sc->vr_miibus)
  device_delete_child(dev, sc->vr_miibus);
 bus_generic_detach(dev);

 if (sc->vr_intrhand)
  bus_teardown_intr(dev, sc->vr_irq, sc->vr_intrhand);
 if (sc->vr_irq)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->vr_irq);
 if (sc->vr_res)
  bus_release_resource(dev, sc->vr_res_type, sc->vr_res_id,
      sc->vr_res);

 if (ifp)
  if_free(ifp);

 vr_dma_free(sc);

 mtx_destroy(&sc->vr_mtx);

 return (0);
}
