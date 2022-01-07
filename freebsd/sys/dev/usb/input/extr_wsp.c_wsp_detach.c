
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsp_softc {int sc_state; int sc_mutex; int sc_xfer; int sc_fifo; } ;
typedef int device_t ;


 int WSP_ENABLED ;
 int WSP_N_TRANSFER ;
 struct wsp_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_fifo_detach (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;
 int wsp_disable (struct wsp_softc*) ;
 int wsp_set_device_mode (struct wsp_softc*,int ) ;

__attribute__((used)) static int
wsp_detach(device_t dev)
{
 struct wsp_softc *sc = device_get_softc(dev);

 (void) wsp_set_device_mode(sc, 0);

 mtx_lock(&sc->sc_mutex);
 if (sc->sc_state & WSP_ENABLED)
  wsp_disable(sc);
 mtx_unlock(&sc->sc_mutex);

 usb_fifo_detach(&sc->sc_fifo);

 usbd_transfer_unsetup(sc->sc_xfer, WSP_N_TRANSFER);

 mtx_destroy(&sc->sc_mutex);

 return (0);
}
