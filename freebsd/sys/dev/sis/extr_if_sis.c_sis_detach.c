
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {int sis_mtx; int * sis_res; scalar_t__ sis_intrhand; scalar_t__ sis_miibus; int sis_stat_ch; struct ifnet* sis_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef int device_t ;


 int IFCAP_POLLING ;
 int KASSERT (int ,char*) ;
 int SIS_LOCK (struct sis_softc*) ;
 int SIS_UNLOCK (struct sis_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,scalar_t__) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,scalar_t__) ;
 struct sis_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int sis_dma_free (struct sis_softc*) ;
 int sis_res_spec ;
 int sis_stop (struct sis_softc*) ;

__attribute__((used)) static int
sis_detach(device_t dev)
{
 struct sis_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 KASSERT(mtx_initialized(&sc->sis_mtx), ("sis mutex not initialized"));
 ifp = sc->sis_ifp;







 if (device_is_attached(dev)) {
  SIS_LOCK(sc);
  sis_stop(sc);
  SIS_UNLOCK(sc);
  callout_drain(&sc->sis_stat_ch);
  ether_ifdetach(ifp);
 }
 if (sc->sis_miibus)
  device_delete_child(dev, sc->sis_miibus);
 bus_generic_detach(dev);

 if (sc->sis_intrhand)
  bus_teardown_intr(dev, sc->sis_res[1], sc->sis_intrhand);
 bus_release_resources(dev, sis_res_spec, sc->sis_res);

 if (ifp)
  if_free(ifp);

 sis_dma_free(sc);

 mtx_destroy(&sc->sis_mtx);

 return (0);
}
