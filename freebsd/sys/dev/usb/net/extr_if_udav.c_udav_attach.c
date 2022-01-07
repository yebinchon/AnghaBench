
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {int * ue_mtx; int ue_udev; int ue_dev; struct udav_softc* ue_sc; int * ue_methods; } ;
struct usb_attach_arg {int device; } ;
struct udav_softc {int sc_flags; int sc_mtx; int sc_xfer; struct usb_ether sc_ue; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 int UDAV_FLAG_LINK ;
 int UDAV_FLAG_NO_PHY ;
 int UDAV_IFACE_INDEX ;
 int UDAV_N_TRANSFER ;
 int USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct udav_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,int ,int *,int ) ;
 int udav_config ;
 int udav_detach (int ) ;
 int udav_ue_methods ;
 int udav_ue_methods_nophy ;
 int uether_ifattach (struct usb_ether*) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct udav_softc*,int *) ;

__attribute__((used)) static int
udav_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct udav_softc *sc = device_get_softc(dev);
 struct usb_ether *ue = &sc->sc_ue;
 uint8_t iface_index;
 int error;

 sc->sc_flags = USB_GET_DRIVER_INFO(uaa);

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 iface_index = UDAV_IFACE_INDEX;
 error = usbd_transfer_setup(uaa->device, &iface_index,
     sc->sc_xfer, udav_config, UDAV_N_TRANSFER, sc, &sc->sc_mtx);
 if (error) {
  device_printf(dev, "allocating USB transfers failed\n");
  goto detach;
 }




 if (sc->sc_flags & UDAV_FLAG_NO_PHY) {
  ue->ue_methods = &udav_ue_methods_nophy;
  sc->sc_flags |= UDAV_FLAG_LINK;
 } else {
  ue->ue_methods = &udav_ue_methods;
 }

 ue->ue_sc = sc;
 ue->ue_dev = dev;
 ue->ue_udev = uaa->device;
 ue->ue_mtx = &sc->sc_mtx;

 error = uether_ifattach(ue);
 if (error) {
  device_printf(dev, "could not attach interface\n");
  goto detach;
 }

 return (0);

detach:
 udav_detach(dev);
 return (ENXIO);
}
