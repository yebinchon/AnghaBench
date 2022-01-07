
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ether {int * ue_methods; int * ue_mtx; int ue_udev; int ue_dev; struct ipheth_softc* ue_sc; } ;
struct TYPE_2__ {int bIfaceIndex; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
struct ipheth_softc {int sc_mtx; int sc_xfer; int sc_iface_no; struct usb_ether sc_ue; } ;
typedef int device_t ;


 int ENXIO ;
 int IPHETH_ALT_INTFNUM ;
 int IPHETH_N_TRANSFER ;
 int MTX_DEF ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct ipheth_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int ipheth_config ;
 int ipheth_detach (int ) ;
 int ipheth_get_mac_addr (struct ipheth_softc*) ;
 int ipheth_ue_methods ;
 int mtx_init (int *,int ,int *,int ) ;
 int uether_ifattach (struct usb_ether*) ;
 int usbd_set_alt_interface_index (int ,int ,int ) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct ipheth_softc*,int *) ;

__attribute__((used)) static int
ipheth_attach(device_t dev)
{
 struct ipheth_softc *sc = device_get_softc(dev);
 struct usb_ether *ue = &sc->sc_ue;
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 int error;

 sc->sc_iface_no = uaa->info.bIfaceIndex;

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 error = usbd_set_alt_interface_index(uaa->device,
     uaa->info.bIfaceIndex, IPHETH_ALT_INTFNUM);
 if (error) {
  device_printf(dev, "Cannot set alternate setting\n");
  goto detach;
 }
 error = usbd_transfer_setup(uaa->device, &sc->sc_iface_no,
     sc->sc_xfer, ipheth_config, IPHETH_N_TRANSFER, sc, &sc->sc_mtx);
 if (error) {
  device_printf(dev, "Cannot setup USB transfers\n");
  goto detach;
 }
 ue->ue_sc = sc;
 ue->ue_dev = dev;
 ue->ue_udev = uaa->device;
 ue->ue_mtx = &sc->sc_mtx;
 ue->ue_methods = &ipheth_ue_methods;

 error = ipheth_get_mac_addr(sc);
 if (error) {
  device_printf(dev, "Cannot get MAC address\n");
  goto detach;
 }

 error = uether_ifattach(ue);
 if (error) {
  device_printf(dev, "could not attach interface\n");
  goto detach;
 }
 return (0);

detach:
 ipheth_detach(dev);
 return (ENXIO);
}
