
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atp_softc {int sc_state; int sc_mutex; int sc_xfer; int sc_fifo; int sc_callout; } ;
typedef int device_t ;


 int ATP_ENABLED ;
 int ATP_N_TRANSFER ;
 int HID_MODE ;
 int atp_disable (struct atp_softc*) ;
 int atp_set_device_mode (struct atp_softc*,int ) ;
 int callout_drain (int *) ;
 struct atp_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_fifo_detach (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
atp_detach(device_t dev)
{
 struct atp_softc *sc;

 sc = device_get_softc(dev);
 atp_set_device_mode(sc, HID_MODE);

 mtx_lock(&sc->sc_mutex);
 callout_drain(&sc->sc_callout);
 if (sc->sc_state & ATP_ENABLED)
  atp_disable(sc);
 mtx_unlock(&sc->sc_mutex);

 usb_fifo_detach(&sc->sc_fifo);

 usbd_transfer_unsetup(sc->sc_xfer, ATP_N_TRANSFER);

 mtx_destroy(&sc->sc_mutex);

 return (0);
}
