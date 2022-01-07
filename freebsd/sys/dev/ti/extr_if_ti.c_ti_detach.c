
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_softc {int ti_mtx; scalar_t__ ti_membuf2; scalar_t__ ti_membuf; scalar_t__ ti_res; scalar_t__ ti_irq; scalar_t__ ti_intrhand; int ifmedia; int ti_watchdog; struct ifnet* ti_ifp; scalar_t__ dev; } ;
struct ifnet {int dummy; } ;
typedef int device_t ;


 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int PCIR_BAR (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TI_LOCK (struct ti_softc*) ;
 int TI_UNLOCK (struct ti_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int callout_drain (int *) ;
 int destroy_dev (scalar_t__) ;
 struct ti_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int free (scalar_t__,int ) ;
 int if_free (struct ifnet*) ;
 int ifmedia_removeall (int *) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int ti_dma_free (struct ti_softc*) ;
 int ti_stop (struct ti_softc*) ;

__attribute__((used)) static int
ti_detach(device_t dev)
{
 struct ti_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 if (sc->dev)
  destroy_dev(sc->dev);
 KASSERT(mtx_initialized(&sc->ti_mtx), ("ti mutex not initialized"));
 ifp = sc->ti_ifp;
 if (device_is_attached(dev)) {
  ether_ifdetach(ifp);
  TI_LOCK(sc);
  ti_stop(sc);
  TI_UNLOCK(sc);
 }


 callout_drain(&sc->ti_watchdog);
 bus_generic_detach(dev);
 ti_dma_free(sc);
 ifmedia_removeall(&sc->ifmedia);

 if (sc->ti_intrhand)
  bus_teardown_intr(dev, sc->ti_irq, sc->ti_intrhand);
 if (sc->ti_irq)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->ti_irq);
 if (sc->ti_res) {
  bus_release_resource(dev, SYS_RES_MEMORY, PCIR_BAR(0),
      sc->ti_res);
 }
 if (ifp)
  if_free(ifp);
 if (sc->ti_membuf)
  free(sc->ti_membuf, M_DEVBUF);
 if (sc->ti_membuf2)
  free(sc->ti_membuf2, M_DEVBUF);

 mtx_destroy(&sc->ti_mtx);

 return (0);
}
