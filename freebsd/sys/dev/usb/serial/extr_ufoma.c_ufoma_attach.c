
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int bFunctionLength; scalar_t__ bType; int * bMode; } ;
typedef TYPE_2__ usb_mcpc_acm_descriptor ;
typedef int uint8_t ;
struct usb_interface_descriptor {int bInterfaceNumber; } ;
struct usb_config_descriptor {int dummy; } ;
struct TYPE_7__ {int bIfaceIndex; } ;
struct usb_attach_arg {int device; TYPE_1__ info; int iface; } ;
struct TYPE_9__ {int sc_unit; } ;
struct ufoma_softc {int sc_nobulk; int* sc_modetable; TYPE_4__ sc_super_ucom; int sc_mtx; int sc_ucom; int * sc_bulk_xfer; int sc_modetoactivate; int sc_currentmode; int sc_ctrl_xfer; int sc_ctrl_iface_index; int sc_ctrl_iface_no; int sc_cv; int sc_unit; int sc_dev; int sc_udev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef scalar_t__ int32_t ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_STRING ;
 int DPRINTF (char*) ;
 int ENXIO ;
 int MTX_DEF ;
 int M_USBDEV ;
 int M_WAITOK ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct ufoma_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int UDESCSUB_MCPC_ACM ;
 int UDESC_VS_INTERFACE ;
 size_t UFOMA_BULK_ENDPT_READ ;
 size_t UFOMA_BULK_ENDPT_WRITE ;
 int UFOMA_CTRL_ENDPT_MAX ;
 int UMCPC_ACM_MODE_UNLINKED ;
 scalar_t__ UMCPC_ACM_TYPE_AB5 ;
 scalar_t__ UMCPC_ACM_TYPE_AB6 ;
 int cv_init (int *,char*) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct ufoma_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int* malloc (int,int ,int ) ;
 int memcpy (int*,int *,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ ucom_attach (TYPE_4__*,int *,int,struct ufoma_softc*,int *,int *) ;
 int ucom_ref (TYPE_4__*) ;
 int ucom_set_pnpinfo_usb (TYPE_4__*,int ) ;
 int ufoma_callback ;
 int ufoma_ctrl_config ;
 int ufoma_detach (int ) ;
 TYPE_2__* ufoma_get_intconf (struct usb_config_descriptor*,struct usb_interface_descriptor*,int ,int ) ;
 scalar_t__ ufoma_modem_setup (int ,struct ufoma_softc*,struct usb_attach_arg*) ;
 int ufoma_sysctl_current ;
 int ufoma_sysctl_open ;
 int ufoma_sysctl_support ;
 struct usb_config_descriptor* usbd_get_config_descriptor (int ) ;
 struct usb_interface_descriptor* usbd_get_interface_descriptor (int ) ;
 scalar_t__ usbd_transfer_setup (int ,int *,int ,int ,int ,struct ufoma_softc*,int *) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static int
ufoma_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct ufoma_softc *sc = device_get_softc(dev);
 struct usb_config_descriptor *cd;
 struct usb_interface_descriptor *id;
 struct sysctl_ctx_list *sctx;
 struct sysctl_oid *soid;

 usb_mcpc_acm_descriptor *mad;
 uint8_t elements;
 int32_t error;

 sc->sc_udev = uaa->device;
 sc->sc_dev = dev;
 sc->sc_unit = device_get_unit(dev);

 mtx_init(&sc->sc_mtx, "ufoma", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);
 cv_init(&sc->sc_cv, "CWAIT");

 device_set_usb_desc(dev);

 DPRINTF("\n");



 cd = usbd_get_config_descriptor(uaa->device);
 id = usbd_get_interface_descriptor(uaa->iface);
 sc->sc_ctrl_iface_no = id->bInterfaceNumber;
 sc->sc_ctrl_iface_index = uaa->info.bIfaceIndex;

 error = usbd_transfer_setup(uaa->device,
     &sc->sc_ctrl_iface_index, sc->sc_ctrl_xfer,
     ufoma_ctrl_config, UFOMA_CTRL_ENDPT_MAX, sc, &sc->sc_mtx);

 if (error) {
  device_printf(dev, "allocating control USB "
      "transfers failed\n");
  goto detach;
 }
 mad = ufoma_get_intconf(cd, id, UDESC_VS_INTERFACE, UDESCSUB_MCPC_ACM);
 if (mad == ((void*)0)) {
  goto detach;
 }
 if (mad->bFunctionLength < sizeof(*mad)) {
  device_printf(dev, "invalid MAD descriptor\n");
  goto detach;
 }
 if ((mad->bType == UMCPC_ACM_TYPE_AB5) ||
     (mad->bType == UMCPC_ACM_TYPE_AB6)) {
  sc->sc_nobulk = 1;
 } else {
  sc->sc_nobulk = 0;
  if (ufoma_modem_setup(dev, sc, uaa)) {
   goto detach;
  }
 }

 elements = (mad->bFunctionLength - sizeof(*mad) + 1);



 sc->sc_modetable = malloc(elements + 1, M_USBDEV, M_WAITOK);

 if (sc->sc_modetable == ((void*)0)) {
  goto detach;
 }
 sc->sc_modetable[0] = (elements + 1);
 memcpy(&sc->sc_modetable[1], mad->bMode, elements);

 sc->sc_currentmode = UMCPC_ACM_MODE_UNLINKED;
 sc->sc_modetoactivate = mad->bMode[0];


 mtx_lock(&sc->sc_mtx);
 usbd_xfer_set_stall(sc->sc_bulk_xfer[UFOMA_BULK_ENDPT_WRITE]);
 usbd_xfer_set_stall(sc->sc_bulk_xfer[UFOMA_BULK_ENDPT_READ]);
 mtx_unlock(&sc->sc_mtx);

 error = ucom_attach(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
     &ufoma_callback, &sc->sc_mtx);
 if (error) {
  DPRINTF("ucom_attach failed\n");
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);


 sctx = device_get_sysctl_ctx(dev);
 soid = device_get_sysctl_tree(dev);

 SYSCTL_ADD_PROC(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "supportmode",
   CTLFLAG_RD|CTLTYPE_STRING, sc, 0, ufoma_sysctl_support,
   "A", "Supporting port role");

 SYSCTL_ADD_PROC(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "currentmode",
   CTLFLAG_RD|CTLTYPE_STRING, sc, 0, ufoma_sysctl_current,
   "A", "Current port role");

 SYSCTL_ADD_PROC(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "openmode",
   CTLFLAG_RW|CTLTYPE_STRING, sc, 0, ufoma_sysctl_open,
   "A", "Mode to transit when port is opened");
 SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "comunit",
   CTLFLAG_RD, &(sc->sc_super_ucom.sc_unit), 0,
   "Unit number as USB serial");

 return (0);

detach:
 ufoma_detach(dev);
 return (ENXIO);
}
