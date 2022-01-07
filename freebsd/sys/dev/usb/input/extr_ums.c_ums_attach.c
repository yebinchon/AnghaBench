
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct TYPE_10__ {int idProduct; int idVendor; int bIfaceIndex; } ;
struct usb_attach_arg {int device; TYPE_3__ info; } ;
struct ums_softc {int sc_mtx; int sc_evdev; struct ums_info* sc_info; int sc_fifo; scalar_t__ sc_iid; int * sc_xfer; int sc_callout; } ;
struct TYPE_9__ {int size; int pos; } ;
struct TYPE_8__ {int size; int pos; } ;
struct TYPE_13__ {int pos; int size; } ;
struct TYPE_12__ {int pos; int size; } ;
struct TYPE_11__ {int pos; int size; } ;
struct ums_info {int sc_flags; int sc_buttons; int * sc_iid_btn; TYPE_7__* sc_loc_btn; int sc_iid_w; TYPE_2__ sc_loc_w; int sc_iid_t; TYPE_1__ sc_loc_t; int sc_iid_z; TYPE_6__ sc_loc_z; int sc_iid_y; TYPE_5__ sc_loc_y; int sc_iid_x; TYPE_4__ sc_loc_x; } ;
typedef int device_t ;
struct TYPE_14__ {int pos; int size; } ;


 scalar_t__ BTN_MOUSE ;
 int BUS_USB ;
 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int DPRINTF (char*,...) ;
 int DPRINTFN (int,char*,struct ums_softc*) ;
 int ENOMEM ;
 int EV_KEY ;
 int EV_REL ;
 int EV_SYN ;
 int GID_OPERATOR ;
 int INPUT_PROP_POINTER ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int M_TEMP ;
 int OID_AUTO ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct ums_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int UID_ROOT ;
 int UMS_FLAG_REVZ ;
 int UMS_FLAG_SBU ;
 int UMS_FLAG_T_AXIS ;
 int UMS_FLAG_X_AXIS ;
 int UMS_FLAG_Y_AXIS ;
 int UMS_FLAG_Z_AXIS ;
 size_t UMS_INFO_MAX ;
 size_t UMS_INTR_DT ;
 int UMS_N_TRANSFER ;
 int UQ_MS_BAD_CLASS ;
 int UQ_MS_REVZ ;
 int device_get_desc (int ) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct ums_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int evdev_alloc () ;
 int evdev_register_mtx (int ,int *) ;
 int evdev_set_id (int ,int ,int ,int ,int ) ;
 int evdev_set_methods (int ,struct ums_softc*,int *) ;
 int evdev_set_name (int ,int ) ;
 int evdev_set_phys (int ,int ) ;
 int evdev_set_serial (int ,int ) ;
 int evdev_support_event (int ,int ) ;
 int evdev_support_key (int ,scalar_t__) ;
 int evdev_support_prop (int ,int ) ;
 int evdev_support_rel (int ,int ) ;
 int free (void*,int ) ;
 int hid_input ;
 int hid_report_size (void*,int ,int ,scalar_t__*) ;
 int mtx_init (int *,char*,int *,int) ;
 int ums_config ;
 int ums_detach (int ) ;
 int ums_evdev_methods ;
 int ums_fifo_methods ;
 int ums_hid_parse (struct ums_softc*,int ,void*,int ,size_t) ;
 int ums_sysctl_handler_parseinfo ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 int usb_fifo_attach (int ,struct ums_softc*,int *,int *,int *,int ,int,int ,int ,int ,int) ;
 int usb_get_serial (int ) ;
 scalar_t__ usb_test_quirk (struct usb_attach_arg*,int ) ;
 int usbd_errstr (int) ;
 int usbd_req_get_hid_desc (int ,int *,void**,int *,int ,int ) ;
 int usbd_req_set_protocol (int ,int *,int ,int) ;
 int usbd_transfer_setup (int ,int *,int *,int ,int ,struct ums_softc*,int *) ;
 scalar_t__ usbd_xfer_max_framelen (int ) ;

__attribute__((used)) static int
ums_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct ums_softc *sc = device_get_softc(dev);
 struct ums_info *info;
 void *d_ptr = ((void*)0);
 int isize;
 int err;
 uint16_t d_len;
 uint8_t i;




 DPRINTFN(11, "sc=%p\n", sc);

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, "ums lock", ((void*)0), MTX_DEF | MTX_RECURSE);

 usb_callout_init_mtx(&sc->sc_callout, &sc->sc_mtx, 0);







 err = usbd_req_set_protocol(uaa->device, ((void*)0),
     uaa->info.bIfaceIndex, 1);

 err = usbd_transfer_setup(uaa->device,
     &uaa->info.bIfaceIndex, sc->sc_xfer, ums_config,
     UMS_N_TRANSFER, sc, &sc->sc_mtx);

 if (err) {
  DPRINTF("error=%s\n", usbd_errstr(err));
  goto detach;
 }


 err = usbd_req_get_hid_desc(uaa->device, ((void*)0), &d_ptr,
     &d_len, M_TEMP, uaa->info.bIfaceIndex);

 if (err) {
  device_printf(dev, "error reading report description\n");
  goto detach;
 }

 isize = hid_report_size(d_ptr, d_len, hid_input, &sc->sc_iid);







 if (usb_test_quirk(uaa, UQ_MS_BAD_CLASS)) {

  sc->sc_iid = 0;

  info = &sc->sc_info[0];
  info->sc_flags = (UMS_FLAG_X_AXIS |
      UMS_FLAG_Y_AXIS |
      UMS_FLAG_Z_AXIS |
      UMS_FLAG_SBU);
  info->sc_buttons = 3;
  isize = 5;

  info->sc_loc_x.pos = 16;
  info->sc_loc_x.size = 8;
  info->sc_loc_y.pos = 24;
  info->sc_loc_y.size = 8;
  info->sc_loc_z.pos = 32;
  info->sc_loc_z.size = 8;
  info->sc_loc_btn[0].pos = 8;
  info->sc_loc_btn[0].size = 1;
  info->sc_loc_btn[1].pos = 9;
  info->sc_loc_btn[1].size = 1;
  info->sc_loc_btn[2].pos = 10;
  info->sc_loc_btn[2].size = 1;


  device_printf(dev, "3 buttons and [XYZ] "
      "coordinates ID=0\n");

 } else {

  for (i = 0; i < UMS_INFO_MAX; i++) {
   ums_hid_parse(sc, dev, d_ptr, d_len, i);
  }
 }

 if (usb_test_quirk(uaa, UQ_MS_REVZ)) {
  info = &sc->sc_info[0];

  info->sc_flags |= UMS_FLAG_REVZ;
 }
 if (isize > (int)usbd_xfer_max_framelen(sc->sc_xfer[UMS_INTR_DT])) {
  DPRINTF("WARNING: report size, %d bytes, is larger "
      "than interrupt size, %d bytes!\n", isize,
      usbd_xfer_max_framelen(sc->sc_xfer[UMS_INTR_DT]));
 }
 free(d_ptr, M_TEMP);
 d_ptr = ((void*)0);
 err = usb_fifo_attach(uaa->device, sc, &sc->sc_mtx,
     &ums_fifo_methods, &sc->sc_fifo,
     device_get_unit(dev), -1, uaa->info.bIfaceIndex,
       UID_ROOT, GID_OPERATOR, 0644);
 if (err)
  goto detach;
 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
     OID_AUTO, "parseinfo", CTLTYPE_STRING|CTLFLAG_RD,
     sc, 0, ums_sysctl_handler_parseinfo,
     "", "Dump of parsed HID report descriptor");

 return (0);

detach:
 if (d_ptr) {
  free(d_ptr, M_TEMP);
 }
 ums_detach(dev);
 return (ENOMEM);
}
