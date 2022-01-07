
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {int * ue_methods; int * ue_mtx; int ue_udev; int ue_dev; struct mos_softc* ue_sc; } ;
struct usb_attach_arg {int device; } ;
struct mos_softc {int mos_flags; int sc_mtx; int sc_xfer; struct usb_ether sc_ue; } ;
typedef int device_t ;


 int ENXIO ;
 int MCS7730 ;
 int MCS7830 ;
 int MCS7832 ;
 int MOS_DPRINTFN (char*) ;
 int MOS_ENDPT_MAX ;
 int MOS_IFACE_IDX ;
 int MTX_DEF ;
 int USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct mos_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int mos_config ;
 int mos_detach (int ) ;
 int mos_ue_methods ;
 int mtx_init (int *,int ,int *,int ) ;
 int uether_ifattach (struct usb_ether*) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct mos_softc*,int *) ;

__attribute__((used)) static int
mos_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct mos_softc *sc = device_get_softc(dev);
 struct usb_ether *ue = &sc->sc_ue;
 uint8_t iface_index;
 int error;

 sc->mos_flags = USB_GET_DRIVER_INFO(uaa);

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 iface_index = MOS_IFACE_IDX;
 error = usbd_transfer_setup(uaa->device, &iface_index,
     sc->sc_xfer, mos_config, MOS_ENDPT_MAX,
     sc, &sc->sc_mtx);

 if (error) {
  device_printf(dev, "allocating USB transfers failed\n");
  goto detach;
 }
 ue->ue_sc = sc;
 ue->ue_dev = dev;
 ue->ue_udev = uaa->device;
 ue->ue_mtx = &sc->sc_mtx;
 ue->ue_methods = &mos_ue_methods;


 if (sc->mos_flags & MCS7730) {
  MOS_DPRINTFN("model: MCS7730");
 } else if (sc->mos_flags & MCS7830) {
  MOS_DPRINTFN("model: MCS7830");
 } else if (sc->mos_flags & MCS7832) {
  MOS_DPRINTFN("model: MCS7832");
 }
 error = uether_ifattach(ue);
 if (error) {
  device_printf(dev, "could not attach interface\n");
  goto detach;
 }
 return (0);


detach:
 mos_detach(dev);
 return (ENXIO);
}
