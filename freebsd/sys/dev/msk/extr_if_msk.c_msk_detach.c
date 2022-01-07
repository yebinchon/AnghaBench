
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_softc {int ** msk_if; int msk_mtx; } ;
struct msk_if_softc {size_t msk_port; struct msk_softc* msk_softc; int msk_tick_ch; int msk_flags; struct ifnet* msk_ifp; } ;
struct ifnet {int dummy; } ;
typedef int device_t ;


 int KASSERT (int ,char*) ;
 int MSK_FLAG_DETACH ;
 int MSK_IF_LOCK (struct msk_if_softc*) ;
 int MSK_IF_UNLOCK (struct msk_if_softc*) ;
 int bus_generic_detach (int ) ;
 int callout_drain (int *) ;
 struct msk_if_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int msk_rx_dma_jfree (struct msk_if_softc*) ;
 int msk_stop (struct msk_if_softc*) ;
 int msk_txrx_dma_free (struct msk_if_softc*) ;
 int mtx_initialized (int *) ;

__attribute__((used)) static int
msk_detach(device_t dev)
{
 struct msk_softc *sc;
 struct msk_if_softc *sc_if;
 struct ifnet *ifp;

 sc_if = device_get_softc(dev);
 KASSERT(mtx_initialized(&sc_if->msk_softc->msk_mtx),
     ("msk mutex not initialized in msk_detach"));
 MSK_IF_LOCK(sc_if);

 ifp = sc_if->msk_ifp;
 if (device_is_attached(dev)) {

  sc_if->msk_flags |= MSK_FLAG_DETACH;
  msk_stop(sc_if);

  MSK_IF_UNLOCK(sc_if);
  callout_drain(&sc_if->msk_tick_ch);
  if (ifp)
   ether_ifdetach(ifp);
  MSK_IF_LOCK(sc_if);
 }
 msk_rx_dma_jfree(sc_if);
 msk_txrx_dma_free(sc_if);
 bus_generic_detach(dev);

 sc = sc_if->msk_softc;
 sc->msk_if[sc_if->msk_port] = ((void*)0);
 MSK_IF_UNLOCK(sc_if);
 if (ifp)
  if_free(ifp);

 return (0);
}
