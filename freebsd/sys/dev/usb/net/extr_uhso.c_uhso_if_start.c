
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhso_softc {int sc_mtx; int * sc_if_xfer; } ;
struct ifnet {int if_drv_flags; struct uhso_softc* if_softc; } ;


 int IFF_DRV_RUNNING ;
 int UHSO_DPRINTF (int,char*) ;
 size_t UHSO_IFNET_READ ;
 size_t UHSO_IFNET_WRITE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
uhso_if_start(struct ifnet *ifp)
{
 struct uhso_softc *sc = ifp->if_softc;

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
  UHSO_DPRINTF(1, "Not running\n");
  return;
 }

 mtx_lock(&sc->sc_mtx);
 usbd_transfer_start(sc->sc_if_xfer[UHSO_IFNET_READ]);
 usbd_transfer_start(sc->sc_if_xfer[UHSO_IFNET_WRITE]);
 mtx_unlock(&sc->sc_mtx);
 UHSO_DPRINTF(3, "interface started\n");
}
