
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usie_softc {int sc_mtx; int * sc_if_xfer; } ;
struct ifnet {int if_drv_flags; struct usie_softc* if_softc; } ;


 int DPRINTF (char*) ;
 int DPRINTFN (int,char*) ;
 int IFF_DRV_RUNNING ;
 size_t USIE_IF_TX ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
usie_if_start(struct ifnet *ifp)
{
 struct usie_softc *sc = ifp->if_softc;

 if (!(ifp->if_drv_flags & IFF_DRV_RUNNING)) {
  DPRINTF("Not running\n");
  return;
 }
 mtx_lock(&sc->sc_mtx);
 usbd_transfer_start(sc->sc_if_xfer[USIE_IF_TX]);
 mtx_unlock(&sc->sc_mtx);

 DPRINTFN(3, "interface started\n");
}
