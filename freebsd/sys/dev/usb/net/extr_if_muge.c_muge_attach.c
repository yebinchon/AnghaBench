
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {int * ue_methods; int * ue_mtx; int ue_udev; int ue_dev; struct muge_softc* ue_sc; } ;
struct usb_attach_arg {int device; } ;
struct muge_softc {int sc_flags; int sc_mtx; int sc_xfer; struct usb_ether sc_ue; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 int MUGE_FLAG_INIT_DONE ;
 int MUGE_IFACE_IDX ;
 int MUGE_N_TRANSFER ;
 int USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct muge_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 int muge_config ;
 int muge_ue_methods ;
 int uether_ifattach (struct usb_ether*) ;
 int uether_ifattach_wait (struct usb_ether*) ;
 int uether_ifdetach (struct usb_ether*) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct muge_softc*,int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
muge_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct muge_softc *sc = device_get_softc(dev);
 struct usb_ether *ue = &sc->sc_ue;
 uint8_t iface_index;
 int err;

 sc->sc_flags = USB_GET_DRIVER_INFO(uaa);

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);


 iface_index = MUGE_IFACE_IDX;
 err = usbd_transfer_setup(uaa->device, &iface_index, sc->sc_xfer,
     muge_config, MUGE_N_TRANSFER, sc, &sc->sc_mtx);
 if (err) {
  device_printf(dev, "error: allocating USB transfers failed\n");
  goto err;
 }

 ue->ue_sc = sc;
 ue->ue_dev = dev;
 ue->ue_udev = uaa->device;
 ue->ue_mtx = &sc->sc_mtx;
 ue->ue_methods = &muge_ue_methods;

 err = uether_ifattach(ue);
 if (err) {
  device_printf(dev, "error: could not attach interface\n");
  goto err_usbd;
 }


 uether_ifattach_wait(ue);
 if (!(sc->sc_flags & MUGE_FLAG_INIT_DONE))
  goto err_attached;

 return (0);

err_attached:
 uether_ifdetach(ue);
err_usbd:
 usbd_transfer_unsetup(sc->sc_xfer, MUGE_N_TRANSFER);
err:
 mtx_destroy(&sc->sc_mtx);
 return (ENXIO);
}
