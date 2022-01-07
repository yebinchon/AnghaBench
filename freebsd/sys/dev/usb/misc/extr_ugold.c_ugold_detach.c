
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ugold_softc {int sc_mtx; int sc_xfer; int sc_udev; int * sc_readout_msg; int sc_callout; } ;
typedef int device_t ;


 int UGOLD_N_TRANSFER ;
 int callout_drain (int *) ;
 struct ugold_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int usb_proc_explore_lock (int ) ;
 int usb_proc_explore_mwait (int ,int *,int *) ;
 int usb_proc_explore_unlock (int ) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
ugold_detach(device_t dev)
{
 struct ugold_softc *sc = device_get_softc(dev);

 callout_drain(&sc->sc_callout);

 usb_proc_explore_lock(sc->sc_udev);
 usb_proc_explore_mwait(sc->sc_udev,
     &sc->sc_readout_msg[0], &sc->sc_readout_msg[1]);
 usb_proc_explore_unlock(sc->sc_udev);

 usbd_transfer_unsetup(sc->sc_xfer, UGOLD_N_TRANSFER);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
