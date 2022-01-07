
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfumass_softc {int sc_ctl_initid; int sc_mtx; int sc_xfer; } ;
typedef int device_t ;


 int CFUMASS_DEBUG (struct cfumass_softc*,char*) ;
 int CFUMASS_LOCK (struct cfumass_softc*) ;
 int CFUMASS_T_MAX ;
 int CFUMASS_UNLOCK (struct cfumass_softc*) ;
 int CFUMASS_WARN (struct cfumass_softc*,char*,int) ;
 int cfumass_port ;
 int cfumass_refcount ;
 int cfumass_terminate (struct cfumass_softc*) ;
 int ctl_remove_initiator (int *,int) ;
 struct cfumass_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int refcount_release (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
cfumass_detach(device_t dev)
{
 struct cfumass_softc *sc;
 int error;

 sc = device_get_softc(dev);

 CFUMASS_DEBUG(sc, "go");

 CFUMASS_LOCK(sc);
 cfumass_terminate(sc);
 CFUMASS_UNLOCK(sc);
 usbd_transfer_unsetup(sc->sc_xfer, CFUMASS_T_MAX);

 if (sc->sc_ctl_initid != -1) {
  error = ctl_remove_initiator(&cfumass_port, sc->sc_ctl_initid);
  if (error != 0) {
   CFUMASS_WARN(sc, "ctl_remove_initiator() failed "
       "with error %d", error);
  }
  sc->sc_ctl_initid = -1;
 }

 mtx_destroy(&sc->sc_mtx);
 refcount_release(&cfumass_refcount);

 return (0);
}
