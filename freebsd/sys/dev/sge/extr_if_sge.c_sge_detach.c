
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_softc {int sge_mtx; scalar_t__ sge_res; int sge_res_id; int sge_res_type; scalar_t__ sge_irq; scalar_t__ sge_intrhand; scalar_t__ sge_miibus; int sge_stat_ch; struct ifnet* sge_ifp; } ;
struct ifnet {int dummy; } ;
typedef int device_t ;


 int SGE_LOCK (struct sge_softc*) ;
 int SGE_UNLOCK (struct sge_softc*) ;
 int SYS_RES_IRQ ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,scalar_t__) ;
 struct sge_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int sge_dma_free (struct sge_softc*) ;
 int sge_stop (struct sge_softc*) ;

__attribute__((used)) static int
sge_detach(device_t dev)
{
 struct sge_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 ifp = sc->sge_ifp;

 if (device_is_attached(dev)) {
  ether_ifdetach(ifp);
  SGE_LOCK(sc);
  sge_stop(sc);
  SGE_UNLOCK(sc);
  callout_drain(&sc->sge_stat_ch);
 }
 if (sc->sge_miibus)
  device_delete_child(dev, sc->sge_miibus);
 bus_generic_detach(dev);

 if (sc->sge_intrhand)
  bus_teardown_intr(dev, sc->sge_irq, sc->sge_intrhand);
 if (sc->sge_irq)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sge_irq);
 if (sc->sge_res)
  bus_release_resource(dev, sc->sge_res_type, sc->sge_res_id,
      sc->sge_res);
 if (ifp)
  if_free(ifp);
 sge_dma_free(sc);
 mtx_destroy(&sc->sge_mtx);

 return (0);
}
