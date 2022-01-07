
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct usb_interface_descriptor {int bInterfaceNumber; } ;
struct TYPE_3__ {int bIfaceNum; int bIfaceIndex; } ;
struct usb_attach_arg {int device; TYPE_1__ info; int iface; } ;
struct uhso_tty {size_t ht_muxport; char* ht_name; } ;
struct uhso_softc {int sc_radio; int sc_ttys; int sc_dev; int sc_type; struct ucom_softc* sc_ucom; struct uhso_tty* sc_tty; int sc_mtx; int sc_ctrl_xfer; int sc_iface_index; int sc_iface_no; int sc_ctrl_iface_no; int sc_super_ucom; int sc_rxq; int sc_udev; } ;
struct ucom_softc {int sc_subunit; TYPE_2__* sc_super; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int device_t ;
struct TYPE_4__ {int sc_unit; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int INT_MAX ;
 int MTX_DEF ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int*,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct uhso_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_STRING (struct sysctl_ctx_list*,int ,int ,char*,int ,char*,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 scalar_t__ UHSO_AUTO_IFACE ;
 int UHSO_CTRL_MAX ;
 size_t UHSO_IFACE_PORT (int ) ;
 size_t UHSO_IFACE_PORT_TYPE (int ) ;
 int UHSO_IFACE_USB_TYPE (int ) ;
 int UHSO_IF_MUX ;
 scalar_t__ UHSO_STATIC_IFACE ;
 scalar_t__ USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 scalar_t__ bootverbose ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct uhso_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,char*,...) ;
 int device_set_desc_copy (int ,char*) ;
 int mbufq_init (int *,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int snprintf (char*,int,char*,int,...) ;
 int ucom_ref (int *) ;
 int uhso_ctrl_config ;
 int uhso_detach (int ) ;
 int* uhso_mux_port_map ;
 char** uhso_port ;
 char** uhso_port_type ;
 char** uhso_port_type_sysctl ;
 int uhso_probe_iface (struct uhso_softc*,int ,void*) ;
 void* uhso_probe_iface_auto ;
 void* uhso_probe_iface_static ;
 int uhso_radio_sysctl ;
 int usb_get_manufacturer (int ) ;
 int usb_get_product (int ) ;
 int usbd_errstr (scalar_t__) ;
 struct usb_interface_descriptor* usbd_get_interface_descriptor (int ) ;
 scalar_t__ usbd_transfer_setup (int ,int *,int ,int ,int ,struct uhso_softc*,int *) ;

__attribute__((used)) static int
uhso_attach(device_t self)
{
 struct uhso_softc *sc = device_get_softc(self);
 struct usb_attach_arg *uaa = device_get_ivars(self);
 struct usb_interface_descriptor *id;
 struct sysctl_ctx_list *sctx;
 struct sysctl_oid *soid;
 struct sysctl_oid *tree = ((void*)0), *tty_node;
 struct ucom_softc *ucom;
 struct uhso_tty *ht;
 int i, error, port;
 void *probe_f;
 usb_error_t uerr;
 char *desc;

 sc->sc_dev = self;
 sc->sc_udev = uaa->device;
 mtx_init(&sc->sc_mtx, "uhso", ((void*)0), MTX_DEF);
 mbufq_init(&sc->sc_rxq, INT_MAX);
 ucom_ref(&sc->sc_super_ucom);

 sc->sc_radio = 1;

 id = usbd_get_interface_descriptor(uaa->iface);
 sc->sc_ctrl_iface_no = id->bInterfaceNumber;

 sc->sc_iface_no = uaa->info.bIfaceNum;
 sc->sc_iface_index = uaa->info.bIfaceIndex;


 uerr = usbd_transfer_setup(uaa->device,
     &sc->sc_iface_index, sc->sc_ctrl_xfer,
     uhso_ctrl_config, UHSO_CTRL_MAX, sc, &sc->sc_mtx);
 if (uerr) {
  device_printf(self, "Failed to setup control pipe: %s\n",
      usbd_errstr(uerr));
  goto out;
 }

 if (USB_GET_DRIVER_INFO(uaa) == UHSO_STATIC_IFACE)
  probe_f = uhso_probe_iface_static;
 else if (USB_GET_DRIVER_INFO(uaa) == UHSO_AUTO_IFACE)
  probe_f = uhso_probe_iface_auto;
 else
  goto out;

 error = uhso_probe_iface(sc, uaa->info.bIfaceNum, probe_f);
 if (error != 0)
  goto out;

 sctx = device_get_sysctl_ctx(sc->sc_dev);
 soid = device_get_sysctl_tree(sc->sc_dev);

 SYSCTL_ADD_STRING(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "type",
     CTLFLAG_RD, uhso_port[UHSO_IFACE_PORT(sc->sc_type)], 0,
     "Port available at this interface");
 SYSCTL_ADD_PROC(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "radio",
     CTLTYPE_INT | CTLFLAG_RWTUN, sc, 0, uhso_radio_sysctl, "I", "Enable radio");






 device_set_desc_copy(self, uhso_port_type[UHSO_IFACE_PORT_TYPE(sc->sc_type)]);

 device_printf(self, "<%s port> at <%s %s> on %s\n",
     uhso_port_type[UHSO_IFACE_PORT_TYPE(sc->sc_type)],
     usb_get_manufacturer(uaa->device),
     usb_get_product(uaa->device),
     device_get_nameunit(device_get_parent(self)));

 if (sc->sc_ttys > 0) {
  SYSCTL_ADD_INT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "ports",
      CTLFLAG_RD, &sc->sc_ttys, 0, "Number of attached serial ports");

  tree = SYSCTL_ADD_NODE(sctx, SYSCTL_CHILDREN(soid), OID_AUTO,
      "port", CTLFLAG_RD, ((void*)0), "Serial ports");
 }





 for (i = 0; i < sc->sc_ttys; i++) {
  ht = &sc->sc_tty[i];
  ucom = &sc->sc_ucom[i];

  if (UHSO_IFACE_USB_TYPE(sc->sc_type) & UHSO_IF_MUX)
   port = uhso_mux_port_map[ht->ht_muxport];
  else
   port = UHSO_IFACE_PORT_TYPE(sc->sc_type);

  desc = uhso_port_type_sysctl[port];

  tty_node = SYSCTL_ADD_NODE(sctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      desc, CTLFLAG_RD, ((void*)0), "");

  ht->ht_name[0] = 0;
  if (sc->sc_ttys == 1)
   snprintf(ht->ht_name, 32, "cuaU%d", ucom->sc_super->sc_unit);
  else {
   snprintf(ht->ht_name, 32, "cuaU%d.%d",
       ucom->sc_super->sc_unit, ucom->sc_subunit);
  }

  desc = uhso_port_type[port];
  SYSCTL_ADD_STRING(sctx, SYSCTL_CHILDREN(tty_node), OID_AUTO,
      "tty", CTLFLAG_RD, ht->ht_name, 0, "");
  SYSCTL_ADD_STRING(sctx, SYSCTL_CHILDREN(tty_node), OID_AUTO,
      "desc", CTLFLAG_RD, desc, 0, "");

  if (bootverbose)
   device_printf(sc->sc_dev,
       "\"%s\" port at %s\n", desc, ht->ht_name);
 }

 return (0);
out:
 uhso_detach(sc->sc_dev);
 return (ENXIO);
}
