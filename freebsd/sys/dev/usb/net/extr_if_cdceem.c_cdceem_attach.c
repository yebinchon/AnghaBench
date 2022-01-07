
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_ether {int* ue_eaddr; int * ue_methods; int * ue_mtx; int ue_udev; int ue_dev; struct cdceem_softc* ue_sc; } ;
struct usb_attach_arg {int device; } ;
struct cdceem_softc {int sc_mtx; int sc_xfer; struct usb_ether sc_ue; } ;
typedef int device_t ;


 int CDCEEM_N_TRANSFER ;
 int CDCEEM_WARN (struct cdceem_softc*,char*,int) ;
 int ETHER_ADDR_LEN ;
 int MTX_DEF ;
 int arc4rand (int*,int ,int ) ;
 int cdceem_config ;
 int cdceem_ue_methods ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct cdceem_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 int uether_ifattach (struct usb_ether*) ;
 int usbd_transfer_setup (int ,scalar_t__*,int ,int ,int ,struct cdceem_softc*,int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
cdceem_attach(device_t dev)
{
 struct cdceem_softc *sc;
 struct usb_ether *ue;
 struct usb_attach_arg *uaa;
 int error;
 uint8_t iface_index;

 sc = device_get_softc(dev);
 ue = &sc->sc_ue;
 uaa = device_get_ivars(dev);

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);


 iface_index = 0;
 error = usbd_transfer_setup(uaa->device, &iface_index, sc->sc_xfer,
     cdceem_config, CDCEEM_N_TRANSFER, sc, &sc->sc_mtx);
 if (error != 0) {
  CDCEEM_WARN(sc,
      "allocating USB transfers failed, error %d", error);
  mtx_destroy(&sc->sc_mtx);
  return (error);
 }


 arc4rand(ue->ue_eaddr, ETHER_ADDR_LEN, 0);
 ue->ue_eaddr[0] &= ~0x01;
 ue->ue_eaddr[0] |= 0x02;

 ue->ue_sc = sc;
 ue->ue_dev = dev;
 ue->ue_udev = uaa->device;
 ue->ue_mtx = &sc->sc_mtx;
 ue->ue_methods = &cdceem_ue_methods;

 error = uether_ifattach(ue);
 if (error != 0) {
  CDCEEM_WARN(sc, "could not attach interface, error %d", error);
  usbd_transfer_unsetup(sc->sc_xfer, CDCEEM_N_TRANSFER);
  mtx_destroy(&sc->sc_mtx);
  return (error);
 }

 return (0);
}
