
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct usb_interface_descriptor {scalar_t__ bInterfaceNumber; } ;
struct usb_interface {int dummy; } ;
struct usb_ether {int* ue_eaddr; int * ue_methods; int * ue_mtx; int ue_udev; int ue_dev; struct cdce_softc* ue_sc; } ;
struct usb_config {int dummy; } ;
struct usb_cdc_union_descriptor {int bLength; scalar_t__* bSlaveInterface; } ;
struct usb_cdc_ethernet_descriptor {int bLength; int iMacAddress; } ;
struct TYPE_2__ {scalar_t__ bIfaceIndex; } ;
struct usb_attach_arg {scalar_t__ usb_mode; int device; TYPE_1__ info; } ;
struct cdce_softc {int sc_flags; int sc_mtx; struct usb_ether sc_ue; int sc_xfer; scalar_t__* sc_ifaces_index; } ;
typedef int eaddr_str ;
typedef int device_t ;


 int CDCE_FLAG_NO_UNION ;
 int CDCE_N_TRANSFER ;
 int DPRINTFN (int,char*) ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int MTX_DEF ;
 int UDESCSUB_CDC_ENF ;
 int UDESCSUB_CDC_UNION ;
 int UDESC_CS_INTERFACE ;
 int USB_ERR_INVAL ;
 int USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 scalar_t__ USB_MODE_DEVICE ;
 struct usb_config* cdce_config ;
 int cdce_detach (int ) ;
 struct usb_config* cdce_ncm_config ;
 scalar_t__ cdce_ncm_init (struct cdce_softc*) ;
 int cdce_ue_methods ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct cdce_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int memcpy (int*,int *,int) ;
 int memset (int*,int ,int) ;
 int mtx_init (int *,int ,int *,int ) ;
 int ticks ;
 int uether_ifattach (struct usb_ether*) ;
 void* usbd_find_descriptor (int ,int *,scalar_t__,int ,int,int ,int) ;
 struct usb_interface* usbd_get_iface (int ,scalar_t__) ;
 struct usb_interface_descriptor* usbd_get_interface_descriptor (struct usb_interface*) ;
 int usbd_req_get_string_any (int ,int *,char*,int,int ) ;
 int usbd_set_alt_interface_index (int ,scalar_t__,scalar_t__) ;
 int usbd_set_parent_iface (int ,scalar_t__,scalar_t__) ;
 int usbd_transfer_setup (int ,scalar_t__*,int ,struct usb_config const*,int ,struct cdce_softc*,int *) ;

__attribute__((used)) static int
cdce_attach(device_t dev)
{
 struct cdce_softc *sc = device_get_softc(dev);
 struct usb_ether *ue = &sc->sc_ue;
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct usb_interface *iface;
 const struct usb_cdc_union_descriptor *ud;
 const struct usb_interface_descriptor *id;
 const struct usb_cdc_ethernet_descriptor *ued;
 const struct usb_config *pcfg;
 uint32_t seed;
 int error;
 uint8_t i;
 uint8_t data_iface_no;
 char eaddr_str[5 * ETHER_ADDR_LEN];

 sc->sc_flags = USB_GET_DRIVER_INFO(uaa);
 sc->sc_ue.ue_udev = uaa->device;

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 ud = usbd_find_descriptor
     (uaa->device, ((void*)0), uaa->info.bIfaceIndex,
     UDESC_CS_INTERFACE, 0xFF, UDESCSUB_CDC_UNION, 0xFF);

 if ((ud == ((void*)0)) || (ud->bLength < sizeof(*ud)) ||
     (sc->sc_flags & CDCE_FLAG_NO_UNION)) {
  DPRINTFN(1, "No union descriptor!\n");
  sc->sc_ifaces_index[0] = uaa->info.bIfaceIndex;
  sc->sc_ifaces_index[1] = uaa->info.bIfaceIndex;
  goto alloc_transfers;
 }
 data_iface_no = ud->bSlaveInterface[0];

 for (i = 0;; i++) {

  iface = usbd_get_iface(uaa->device, i);

  if (iface) {

   id = usbd_get_interface_descriptor(iface);

   if (id && (id->bInterfaceNumber == data_iface_no)) {
    sc->sc_ifaces_index[0] = i;
    sc->sc_ifaces_index[1] = uaa->info.bIfaceIndex;
    usbd_set_parent_iface(uaa->device, i, uaa->info.bIfaceIndex);
    break;
   }
  } else {
   device_printf(dev, "no data interface found\n");
   goto detach;
  }
 }
alloc_transfers:

 pcfg = cdce_config;

 for (i = 0; i != 32; i++) {

  error = usbd_set_alt_interface_index(uaa->device,
      sc->sc_ifaces_index[0], i);
  if (error)
   break;




  error = usbd_transfer_setup(uaa->device,
      sc->sc_ifaces_index, sc->sc_xfer,
      pcfg, CDCE_N_TRANSFER, sc, &sc->sc_mtx);

  if (error == 0)
   break;
 }

 if (error || (i == 32)) {
  device_printf(dev, "No valid alternate "
      "setting found\n");
  goto detach;
 }

 ued = usbd_find_descriptor
     (uaa->device, ((void*)0), uaa->info.bIfaceIndex,
     UDESC_CS_INTERFACE, 0xFF, UDESCSUB_CDC_ENF, 0xFF);

 if ((ued == ((void*)0)) || (ued->bLength < sizeof(*ued))) {
  error = USB_ERR_INVAL;
 } else {
  error = usbd_req_get_string_any(uaa->device, ((void*)0),
      eaddr_str, sizeof(eaddr_str), ued->iMacAddress);
 }

 if (error) {



  device_printf(dev, "faking MAC address\n");
  seed = ticks;
  sc->sc_ue.ue_eaddr[0] = 0x2a;
  memcpy(&sc->sc_ue.ue_eaddr[1], &seed, sizeof(uint32_t));
  sc->sc_ue.ue_eaddr[5] = device_get_unit(dev);

 } else {

  memset(sc->sc_ue.ue_eaddr, 0, sizeof(sc->sc_ue.ue_eaddr));

  for (i = 0; i != (ETHER_ADDR_LEN * 2); i++) {

   char c = eaddr_str[i];

   if ('0' <= c && c <= '9')
    c -= '0';
   else if (c != 0)
    c -= 'A' - 10;
   else
    break;

   c &= 0xf;

   if ((i & 1) == 0)
    c <<= 4;
   sc->sc_ue.ue_eaddr[i / 2] |= c;
  }

  if (uaa->usb_mode == USB_MODE_DEVICE) {



   sc->sc_ue.ue_eaddr[5] ^= 0xFF;
  }
 }

 ue->ue_sc = sc;
 ue->ue_dev = dev;
 ue->ue_udev = uaa->device;
 ue->ue_mtx = &sc->sc_mtx;
 ue->ue_methods = &cdce_ue_methods;

 error = uether_ifattach(ue);
 if (error) {
  device_printf(dev, "could not attach interface\n");
  goto detach;
 }
 return (0);

detach:
 cdce_detach(dev);
 return (ENXIO);
}
