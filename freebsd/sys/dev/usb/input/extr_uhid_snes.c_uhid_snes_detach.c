
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_snes_softc {int sc_mutex; int sc_watchdog; int sc_transfer; int sc_fifo_no_reset; int sc_fifo; } ;
typedef int device_t ;


 int UHID_SNES_N_TRANSFER ;
 struct uhid_snes_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_callout_drain (int *) ;
 int usb_callout_stop (int *) ;
 int usb_fifo_detach (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
uhid_snes_detach(device_t dev)
{
 struct uhid_snes_softc *sc = device_get_softc(dev);

 usb_fifo_detach(&sc->sc_fifo);
 usb_fifo_detach(&sc->sc_fifo_no_reset);

 mtx_lock(&sc->sc_mutex);
 usb_callout_stop(&sc->sc_watchdog);
 mtx_unlock(&sc->sc_mutex);

 usbd_transfer_unsetup(sc->sc_transfer, UHID_SNES_N_TRANSFER);
 usb_callout_drain(&sc->sc_watchdog);
 mtx_destroy(&sc->sc_mutex);

 return (0);
}
