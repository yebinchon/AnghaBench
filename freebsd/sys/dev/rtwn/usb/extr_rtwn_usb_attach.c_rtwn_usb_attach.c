
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_attach_arg {int device; } ;
struct ieee80211com {int ic_name; } ;
struct rtwn_softc {int sc_mtx; int sc_dev; struct ieee80211com sc_ic; } ;
struct rtwn_usb_softc {int uc_udev; struct rtwn_softc uc_sc; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct rtwn_usb_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int rtwn_attach (struct rtwn_softc*) ;
 int rtwn_sysctlattach (struct rtwn_softc*) ;
 int rtwn_usb_alloc_rx_list (struct rtwn_softc*) ;
 int rtwn_usb_alloc_tx_list (struct rtwn_softc*) ;
 int rtwn_usb_attach_methods (struct rtwn_softc*) ;
 int rtwn_usb_attach_private (struct rtwn_usb_softc*,int ) ;
 int rtwn_usb_detach (int ) ;
 int rtwn_usb_setup_endpoints (struct rtwn_usb_softc*) ;
 int rtwn_usb_sysctlattach (struct rtwn_softc*) ;

__attribute__((used)) static int
rtwn_usb_attach(device_t self)
{
 struct usb_attach_arg *uaa = device_get_ivars(self);
 struct rtwn_usb_softc *uc = device_get_softc(self);
 struct rtwn_softc *sc = &uc->uc_sc;
 struct ieee80211com *ic = &sc->sc_ic;
 int error;

 device_set_usb_desc(self);
 uc->uc_udev = uaa->device;
 sc->sc_dev = self;
 ic->ic_name = device_get_nameunit(self);


 rtwn_sysctlattach(sc);
 rtwn_usb_sysctlattach(sc);
 mtx_init(&sc->sc_mtx, ic->ic_name, MTX_NETWORK_LOCK, MTX_DEF);

 rtwn_usb_attach_methods(sc);
 rtwn_usb_attach_private(uc, USB_GET_DRIVER_INFO(uaa));

 error = rtwn_usb_setup_endpoints(uc);
 if (error != 0)
  goto detach;


 error = rtwn_usb_alloc_rx_list(sc);
 if (error != 0)
  goto detach;

 error = rtwn_usb_alloc_tx_list(sc);
 if (error != 0)
  goto detach;


 error = rtwn_attach(sc);
 if (error != 0)
  goto detach;

 return (0);

detach:
 rtwn_usb_detach(self);
 return (ENXIO);
}
