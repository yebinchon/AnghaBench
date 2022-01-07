
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct dme_softc {scalar_t__ dme_vcc_regulator; int dme_mtx; scalar_t__ dme_res; scalar_t__ dme_irq; scalar_t__ dme_intrhand; scalar_t__ dme_miibus; int dme_tick_ch; struct ifnet* dme_ifp; } ;
typedef int device_t ;


 int DME_LOCK (struct dme_softc*) ;
 int DME_UNLOCK (struct dme_softc*) ;
 int KASSERT (int ,char*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,scalar_t__) ;
 struct dme_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int dme_stop (struct dme_softc*) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int regulator_release (scalar_t__) ;

__attribute__((used)) static int
dme_detach(device_t dev)
{
 struct dme_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 KASSERT(mtx_initialized(&sc->dme_mtx), ("dme mutex not initialized"));

 ifp = sc->dme_ifp;

 if (device_is_attached(dev)) {
  DME_LOCK(sc);
  dme_stop(sc);
  DME_UNLOCK(sc);
  ether_ifdetach(ifp);
  callout_drain(&sc->dme_tick_ch);
 }

 if (sc->dme_miibus)
  device_delete_child(dev, sc->dme_miibus);
 bus_generic_detach(dev);

 if (sc->dme_vcc_regulator != 0)
  regulator_release(sc->dme_vcc_regulator);
 if (sc->dme_intrhand)
  bus_teardown_intr(dev, sc->dme_irq, sc->dme_intrhand);
 if (sc->dme_irq)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->dme_irq);
 if (sc->dme_res)
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->dme_res);

 if (ifp != ((void*)0))
  if_free(ifp);

 mtx_destroy(&sc->dme_mtx);

 return (0);
}
