
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udl_softc {int sc_gone; int sc_fb_copy; int sc_fb_size; int sc_fb_addr; int sc_cv; int sc_mtx; int sc_callout; int sc_xfer; } ;
typedef int device_t ;


 int M_USB_DL ;
 int UDL_LOCK (struct udl_softc*) ;
 int UDL_N_TRANSFER ;
 int UDL_UNLOCK (struct udl_softc*) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int cv_destroy (int *) ;
 int device_delete_children (int ) ;
 struct udl_softc* device_get_softc (int ) ;
 int free (int ,int ) ;
 int mtx_destroy (int *) ;
 int udl_buffer_free (int ,int ) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
udl_detach(device_t dev)
{
 struct udl_softc *sc = device_get_softc(dev);


 device_delete_children(dev);

 UDL_LOCK(sc);
 sc->sc_gone = 1;
 callout_stop(&sc->sc_callout);
 UDL_UNLOCK(sc);

 usbd_transfer_unsetup(sc->sc_xfer, UDL_N_TRANSFER);

 callout_drain(&sc->sc_callout);

 mtx_destroy(&sc->sc_mtx);
 cv_destroy(&sc->sc_cv);


 udl_buffer_free(sc->sc_fb_addr, sc->sc_fb_size);


 free(sc->sc_fb_copy, M_USB_DL);

 return (0);
}
