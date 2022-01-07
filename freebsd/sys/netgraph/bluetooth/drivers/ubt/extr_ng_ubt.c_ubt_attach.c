
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_interface_descriptor {int bInterfaceNumber; int bAlternateSetting; scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; } ;
struct usb_interface {int dummy; } ;
struct usb_endpoint_descriptor {scalar_t__ bDescriptorType; int bLength; int wMaxPacketSize; } ;
struct usb_descriptor {int dummy; } ;
struct TYPE_2__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct ubt_softc {int sc_if_mtx; int sc_xfer; int sc_task; int sc_scoq; int sc_aclq; int sc_cmdq; int sc_ng_mtx; int sc_node; int sc_debug; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int NG_BT_MBUFQ_INIT (int *,int ) ;
 int NG_NODE_FORCE_WRITER (int ) ;
 int NG_NODE_SET_PRIVATE (int ,struct ubt_softc*) ;
 int NG_NODE_UNREF (int ) ;
 int NG_UBT_WARN_LEVEL ;
 int TASK_INIT (int *,int ,int ,struct ubt_softc*) ;
 int UBT_ALERT (struct ubt_softc*,char*,...) ;
 int UBT_DEFAULT_QLEN ;
 int UBT_N_TRANSFER ;
 scalar_t__ UDESC_ENDPOINT ;
 scalar_t__ UDESC_INTERFACE ;
 scalar_t__ UGETW (int ) ;
 scalar_t__ UICLASS_WIRELESS ;
 scalar_t__ UIPROTO_BLUETOOTH ;
 scalar_t__ UISUBCLASS_RF ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct ubt_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int) ;
 scalar_t__ ng_make_node_common (int *,int *) ;
 scalar_t__ ng_name_node (int ,int ) ;
 int typestruct ;
 int ubt_config ;
 int ubt_detach (int ) ;
 int ubt_task ;
 scalar_t__ usb_desc_foreach (int ,struct usb_descriptor*) ;
 int usbd_get_config_descriptor (int ) ;
 struct usb_interface* usbd_get_iface (int ,int) ;
 struct usb_interface_descriptor* usbd_get_interface_descriptor (struct usb_interface*) ;
 scalar_t__ usbd_set_alt_interface_index (int ,int,int) ;
 int usbd_set_parent_iface (int ,int,int ) ;
 scalar_t__ usbd_transfer_setup (int ,int*,int ,int ,int ,struct ubt_softc*,int *) ;

__attribute__((used)) static int
ubt_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct ubt_softc *sc = device_get_softc(dev);
 struct usb_endpoint_descriptor *ed;
 struct usb_interface_descriptor *id;
 struct usb_interface *iface;
 uint16_t wMaxPacketSize;
 uint8_t alt_index, i, j;
 uint8_t iface_index[2] = { 0, 1 };

 device_set_usb_desc(dev);

 sc->sc_dev = dev;
 sc->sc_debug = NG_UBT_WARN_LEVEL;





 if (ng_make_node_common(&typestruct, &sc->sc_node) != 0) {
  UBT_ALERT(sc, "could not create Netgraph node\n");
  return (ENXIO);
 }


 if (ng_name_node(sc->sc_node, device_get_nameunit(dev)) != 0) {
  UBT_ALERT(sc, "could not name Netgraph node\n");
  NG_NODE_UNREF(sc->sc_node);
  return (ENXIO);
 }
 NG_NODE_SET_PRIVATE(sc->sc_node, sc);
 NG_NODE_FORCE_WRITER(sc->sc_node);






 mtx_init(&sc->sc_ng_mtx, "ubt ng", ((void*)0), MTX_DEF);
 mtx_init(&sc->sc_if_mtx, "ubt if", ((void*)0), MTX_DEF | MTX_RECURSE);


 NG_BT_MBUFQ_INIT(&sc->sc_cmdq, UBT_DEFAULT_QLEN);
 NG_BT_MBUFQ_INIT(&sc->sc_aclq, UBT_DEFAULT_QLEN);
 NG_BT_MBUFQ_INIT(&sc->sc_scoq, UBT_DEFAULT_QLEN);


 TASK_INIT(&sc->sc_task, 0, ubt_task, sc);
 wMaxPacketSize = 0;
 alt_index = 0;
 i = 0;
 j = 0;
 ed = ((void*)0);





 while ((ed = (struct usb_endpoint_descriptor *)usb_desc_foreach(
     usbd_get_config_descriptor(uaa->device),
     (struct usb_descriptor *)ed))) {

  if ((ed->bDescriptorType == UDESC_INTERFACE) &&
      (ed->bLength >= sizeof(*id))) {
   id = (struct usb_interface_descriptor *)ed;
   i = id->bInterfaceNumber;
   j = id->bAlternateSetting;
  }

  if ((ed->bDescriptorType == UDESC_ENDPOINT) &&
      (ed->bLength >= sizeof(*ed)) &&
      (i == 1)) {
   uint16_t temp;

   temp = UGETW(ed->wMaxPacketSize);
   if (temp > wMaxPacketSize) {
    wMaxPacketSize = temp;
    alt_index = j;
   }
  }
 }


 if (wMaxPacketSize > 0 &&
     usbd_set_alt_interface_index(uaa->device, 1, alt_index)) {
  UBT_ALERT(sc, "could not set alternate setting %d " "for interface 1!\n", alt_index);

  goto detach;
 }


 if (usbd_transfer_setup(uaa->device, iface_index, sc->sc_xfer,
   ubt_config, UBT_N_TRANSFER, sc, &sc->sc_if_mtx)) {
  UBT_ALERT(sc, "could not allocate transfers\n");
  goto detach;
 }


 for (i = 1;; i++) {
  iface = usbd_get_iface(uaa->device, i);
  if (iface == ((void*)0))
   break;
  id = usbd_get_interface_descriptor(iface);

  if ((id != ((void*)0)) &&
      (id->bInterfaceClass == UICLASS_WIRELESS) &&
      (id->bInterfaceSubClass == UISUBCLASS_RF) &&
      (id->bInterfaceProtocol == UIPROTO_BLUETOOTH)) {
   usbd_set_parent_iface(uaa->device, i,
       uaa->info.bIfaceIndex);
  }
 }
 return (0);

detach:
 ubt_detach(dev);

 return (ENXIO);
}
