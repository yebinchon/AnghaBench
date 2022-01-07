
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {scalar_t__ sc_mode; int sc_lock; int * sc_ifnet; } ;
typedef int * if_t ;
typedef int device_t ;


 int DTSEC_LOCK (struct dtsec_softc*) ;
 scalar_t__ DTSEC_MODE_REGULAR ;
 int DTSEC_UNLOCK (struct dtsec_softc*) ;
 struct dtsec_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int dtsec_fm_mac_free (struct dtsec_softc*) ;
 int dtsec_fm_port_free_both (struct dtsec_softc*) ;
 int dtsec_if_deinit_locked (struct dtsec_softc*) ;
 int dtsec_rm_fi_pool_free (struct dtsec_softc*) ;
 int dtsec_rm_fqr_rx_free (struct dtsec_softc*) ;
 int dtsec_rm_fqr_tx_free (struct dtsec_softc*) ;
 int dtsec_rm_pool_rx_free (struct dtsec_softc*) ;
 int ether_ifdetach (int *) ;
 int if_free (int *) ;
 int mtx_destroy (int *) ;

int
dtsec_detach(device_t dev)
{
 struct dtsec_softc *sc;
 if_t ifp;

 sc = device_get_softc(dev);
 ifp = sc->sc_ifnet;

 if (device_is_attached(dev)) {
  ether_ifdetach(ifp);

  DTSEC_LOCK(sc);
  dtsec_if_deinit_locked(sc);
  DTSEC_UNLOCK(sc);
 }

 if (sc->sc_ifnet) {
  if_free(sc->sc_ifnet);
  sc->sc_ifnet = ((void*)0);
 }

 if (sc->sc_mode == DTSEC_MODE_REGULAR) {

  dtsec_rm_fqr_rx_free(sc);
  dtsec_rm_fqr_tx_free(sc);


  dtsec_rm_fi_pool_free(sc);


  dtsec_rm_pool_rx_free(sc);
 }

 dtsec_fm_mac_free(sc);
 dtsec_fm_port_free_both(sc);


 mtx_destroy(&sc->sc_lock);

 return (0);
}
