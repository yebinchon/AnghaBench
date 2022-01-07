
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umass_softc {int sc_mtx; int sc_xfer; } ;
typedef int device_t ;


 int DPRINTF (struct umass_softc*,int ,char*) ;
 int UDMASS_USB ;
 int UMASS_T_MAX ;
 struct umass_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int umass_cam_detach_sim (struct umass_softc*) ;
 int umass_cancel_ccb (struct umass_softc*) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
umass_detach(device_t dev)
{
 struct umass_softc *sc = device_get_softc(dev);

 DPRINTF(sc, UDMASS_USB, "\n");



 usbd_transfer_unsetup(sc->sc_xfer, UMASS_T_MAX);

 mtx_lock(&sc->sc_mtx);



 umass_cancel_ccb(sc);

 umass_cam_detach_sim(sc);

 mtx_unlock(&sc->sc_mtx);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
