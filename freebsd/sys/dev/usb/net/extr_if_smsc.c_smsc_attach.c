
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {int * ue_methods; int * ue_mtx; int ue_udev; int ue_dev; struct smsc_softc* ue_sc; } ;
struct usb_attach_arg {int device; } ;
struct smsc_softc {int sc_mtx; int sc_xfer; int sc_flags; struct usb_ether sc_ue; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 int SMSC_IFACE_IDX ;
 int SMSC_N_TRANSFER ;
 int USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct smsc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,int ,int *,int ) ;
 int smsc_config ;
 int smsc_detach (int ) ;
 int smsc_ue_methods ;
 int uether_ifattach (struct usb_ether*) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct smsc_softc*,int *) ;

__attribute__((used)) static int
smsc_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct smsc_softc *sc = device_get_softc(dev);
 struct usb_ether *ue = &sc->sc_ue;
 uint8_t iface_index;
 int err;

 sc->sc_flags = USB_GET_DRIVER_INFO(uaa);

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);


 iface_index = SMSC_IFACE_IDX;
 err = usbd_transfer_setup(uaa->device, &iface_index, sc->sc_xfer,
                           smsc_config, SMSC_N_TRANSFER, sc, &sc->sc_mtx);
 if (err) {
  device_printf(dev, "error: allocating USB transfers failed\n");
  goto detach;
 }

 ue->ue_sc = sc;
 ue->ue_dev = dev;
 ue->ue_udev = uaa->device;
 ue->ue_mtx = &sc->sc_mtx;
 ue->ue_methods = &smsc_ue_methods;

 err = uether_ifattach(ue);
 if (err) {
  device_printf(dev, "error: could not attach interface\n");
  goto detach;
 }
 return (0);

detach:
 smsc_detach(dev);
 return (ENXIO);
}
