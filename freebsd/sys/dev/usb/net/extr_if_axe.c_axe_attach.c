
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {int * ue_methods; int * ue_mtx; int ue_udev; int ue_dev; struct axe_softc* ue_sc; } ;
struct usb_attach_arg {int device; } ;
struct axe_softc {int sc_mtx; int sc_xfer; int sc_flags; struct usb_ether sc_ue; } ;
typedef int device_t ;


 int AXE_IFACE_IDX ;
 int AXE_N_TRANSFER ;
 int ENXIO ;
 int MTX_DEF ;
 int USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 int axe_config ;
 int axe_detach (int ) ;
 int axe_ue_methods ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct axe_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,int ,int *,int ) ;
 int uether_ifattach (struct usb_ether*) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct axe_softc*,int *) ;

__attribute__((used)) static int
axe_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct axe_softc *sc = device_get_softc(dev);
 struct usb_ether *ue = &sc->sc_ue;
 uint8_t iface_index;
 int error;

 sc->sc_flags = USB_GET_DRIVER_INFO(uaa);

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 iface_index = AXE_IFACE_IDX;
 error = usbd_transfer_setup(uaa->device, &iface_index, sc->sc_xfer,
     axe_config, AXE_N_TRANSFER, sc, &sc->sc_mtx);
 if (error) {
  device_printf(dev, "allocating USB transfers failed\n");
  goto detach;
 }

 ue->ue_sc = sc;
 ue->ue_dev = dev;
 ue->ue_udev = uaa->device;
 ue->ue_mtx = &sc->sc_mtx;
 ue->ue_methods = &axe_ue_methods;

 error = uether_ifattach(ue);
 if (error) {
  device_printf(dev, "could not attach interface\n");
  goto detach;
 }
 return (0);

detach:
 axe_detach(dev);
 return (ENXIO);
}
