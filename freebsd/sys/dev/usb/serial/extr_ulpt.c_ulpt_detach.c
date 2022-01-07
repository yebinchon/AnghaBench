
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulpt_softc {int sc_mtx; int sc_watchdog; int sc_xfer; int sc_fifo_noreset; int sc_fifo; } ;
typedef int device_t ;


 int DPRINTF (char*,struct ulpt_softc*) ;
 int ULPT_N_TRANSFER ;
 struct ulpt_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_callout_drain (int *) ;
 int usb_callout_stop (int *) ;
 int usb_fifo_detach (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
ulpt_detach(device_t dev)
{
 struct ulpt_softc *sc = device_get_softc(dev);

 DPRINTF("sc=%p\n", sc);

 usb_fifo_detach(&sc->sc_fifo);
 usb_fifo_detach(&sc->sc_fifo_noreset);

 mtx_lock(&sc->sc_mtx);
 usb_callout_stop(&sc->sc_watchdog);
 mtx_unlock(&sc->sc_mtx);

 usbd_transfer_unsetup(sc->sc_xfer, ULPT_N_TRANSFER);
 usb_callout_drain(&sc->sc_watchdog);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
