
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int dying; int parent_dmat; TYPE_9__* ifp; int driver_mtx; int cmd_mtx; int mem_res; int cmd_dma; int zeropad_dma; int dmabench_dma; int media; int co_hdl; int * tq; int watchdog_task; int dev; } ;
typedef TYPE_1__ mxge_softc_t ;
typedef int device_t ;
struct TYPE_13__ {int if_drv_flags; } ;


 int EBUSY ;
 int IFF_DRV_RUNNING ;
 int PCIR_BARS ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int callout_drain (int *) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifdetach (TYPE_9__*) ;
 int if_free (TYPE_9__*) ;
 int ifmedia_removeall (int *) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mxge_close (TYPE_1__*,int ) ;
 int mxge_dma_free (int *) ;
 int mxge_dummy_rdma (TYPE_1__*,int ) ;
 int mxge_free_rings (TYPE_1__*) ;
 int mxge_free_slices (TYPE_1__*) ;
 int mxge_rem_irq (TYPE_1__*) ;
 int mxge_rem_sysctls (TYPE_1__*) ;
 scalar_t__ mxge_vlans_active (TYPE_1__*) ;
 int pci_disable_busmaster (int ) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static int
mxge_detach(device_t dev)
{
 mxge_softc_t *sc = device_get_softc(dev);

 if (mxge_vlans_active(sc)) {
  device_printf(sc->dev,
         "Detach vlans before removing module\n");
  return EBUSY;
 }
 mtx_lock(&sc->driver_mtx);
 sc->dying = 1;
 if (sc->ifp->if_drv_flags & IFF_DRV_RUNNING)
  mxge_close(sc, 0);
 mtx_unlock(&sc->driver_mtx);
 ether_ifdetach(sc->ifp);
 if (sc->tq != ((void*)0)) {
  taskqueue_drain(sc->tq, &sc->watchdog_task);
  taskqueue_free(sc->tq);
  sc->tq = ((void*)0);
 }
 callout_drain(&sc->co_hdl);
 ifmedia_removeall(&sc->media);
 mxge_dummy_rdma(sc, 0);
 mxge_rem_sysctls(sc);
 mxge_rem_irq(sc);
 mxge_free_rings(sc);
 mxge_free_slices(sc);
 mxge_dma_free(&sc->dmabench_dma);
 mxge_dma_free(&sc->zeropad_dma);
 mxge_dma_free(&sc->cmd_dma);
 bus_release_resource(dev, SYS_RES_MEMORY, PCIR_BARS, sc->mem_res);
 pci_disable_busmaster(dev);
 mtx_destroy(&sc->cmd_mtx);
 mtx_destroy(&sc->driver_mtx);
 if_free(sc->ifp);
 bus_dma_tag_destroy(sc->parent_dmat);
 return 0;
}
