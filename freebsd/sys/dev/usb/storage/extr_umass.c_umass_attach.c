
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct usb_interface_descriptor {int bInterfaceNumber; } ;
struct TYPE_4__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; int iface; } ;
struct TYPE_6__ {int opcode; } ;
struct TYPE_5__ {int opcode; } ;
struct umass_softc {int sc_proto; int sc_quirks; TYPE_3__ cam_scsi_test_unit_ready; TYPE_2__ cam_scsi_sense; scalar_t__ sc_maxlun; int * sc_transform; int ** sc_xfer; int sc_last_xfer_index; int sc_mtx; int sc_iface_no; int sc_name; int sc_unit; int sc_udev; int sc_dev; } ;
struct umass_probe_proto {int proto; int quirks; } ;
typedef int device_t ;


 int ALT_IFACE_1 ;
 int DPRINTF (struct umass_softc*,int ,char*) ;
 int ENXIO ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int NO_GETMAXLUN ;
 int REQUEST_SENSE ;
 int SHUTTLE_INIT ;
 int TEST_UNIT_READY ;
 int UDMASS_GEN ;
 int UDMASS_USB ;




 int UMASS_PROTO_COMMAND ;



 int UMASS_PROTO_WIRE ;
 int UMASS_T_BBB_COMMAND ;
 int UMASS_T_BBB_MAX ;
 int UMASS_T_CBI_COMMAND ;
 int UMASS_T_CBI_MAX ;
 size_t UMASS_T_MAX ;
 int USB_ERR_INVAL ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 char* device_get_nameunit (int ) ;
 struct umass_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int) ;
 int printf (char*,...) ;
 int snprintf (int ,int,char*,char*) ;
 int umass_atapi_transform ;
 int umass_bbb_config ;
 scalar_t__ umass_bbb_get_max_lun (struct umass_softc*) ;
 int umass_cam_attach (struct umass_softc*) ;
 int umass_cam_attach_sim (struct umass_softc*) ;
 int umass_cbi_config ;
 int umass_detach (int ) ;
 int umass_init_shuttle (struct umass_softc*) ;
 int umass_no_transform ;
 struct umass_probe_proto umass_probe_proto (int ,struct usb_attach_arg*) ;
 int umass_rbc_transform ;
 int umass_scsi_transform ;
 int umass_throttle ;
 int umass_ufi_transform ;
 int usbd_errstr (int) ;
 struct usb_interface_descriptor* usbd_get_interface_descriptor (int ) ;
 int usbd_set_alt_interface_index (int ,int ,int) ;
 int usbd_transfer_setup (int ,int *,int **,int ,int ,struct umass_softc*,int *) ;
 int usbd_xfer_set_interval (int *,int) ;

__attribute__((used)) static int
umass_attach(device_t dev)
{
 struct umass_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct umass_probe_proto temp = umass_probe_proto(dev, uaa);
 struct usb_interface_descriptor *id;
 int err;







 sc->sc_dev = dev;
 sc->sc_udev = uaa->device;
 sc->sc_proto = temp.proto;
 sc->sc_quirks = temp.quirks;
 sc->sc_unit = device_get_unit(dev);

 snprintf(sc->sc_name, sizeof(sc->sc_name),
     "%s", device_get_nameunit(dev));

 device_set_usb_desc(dev);

        mtx_init(&sc->sc_mtx, device_get_nameunit(dev),
     ((void*)0), MTX_DEF | MTX_RECURSE);



 id = usbd_get_interface_descriptor(uaa->iface);
 if (id == ((void*)0)) {
  device_printf(dev, "failed to get "
      "interface number\n");
  goto detach;
 }
 sc->sc_iface_no = id->bInterfaceNumber;
 if (sc->sc_quirks & ALT_IFACE_1) {
  err = usbd_set_alt_interface_index
      (uaa->device, uaa->info.bIfaceIndex, 1);

  if (err) {
   DPRINTF(sc, UDMASS_USB, "could not switch to "
       "Alt Interface 1\n");
   goto detach;
  }
 }


 if (sc->sc_proto & 133) {

  err = usbd_transfer_setup(uaa->device,
      &uaa->info.bIfaceIndex, sc->sc_xfer, umass_bbb_config,
      UMASS_T_BBB_MAX, sc, &sc->sc_mtx);


  sc->sc_last_xfer_index = UMASS_T_BBB_COMMAND;

 } else if (sc->sc_proto & (132 | 131)) {

  err = usbd_transfer_setup(uaa->device,
      &uaa->info.bIfaceIndex, sc->sc_xfer, umass_cbi_config,
      UMASS_T_CBI_MAX, sc, &sc->sc_mtx);


  sc->sc_last_xfer_index = UMASS_T_CBI_COMMAND;

 } else {
  err = USB_ERR_INVAL;
 }

 if (err) {
  device_printf(dev, "could not setup required "
      "transfers, %s\n", usbd_errstr(err));
  goto detach;
 }
 sc->sc_transform =
     (sc->sc_proto & 129) ? &umass_scsi_transform :
     (sc->sc_proto & 128) ? &umass_ufi_transform :
     (sc->sc_proto & 134) ? &umass_atapi_transform :
     (sc->sc_proto & 130) ? &umass_rbc_transform :
     &umass_no_transform;



 if (sc->sc_quirks & SHUTTLE_INIT) {
  umass_init_shuttle(sc);
 }


 if (((sc->sc_proto & UMASS_PROTO_WIRE) == 133) &&
     !(sc->sc_quirks & NO_GETMAXLUN))
  sc->sc_maxlun = umass_bbb_get_max_lun(sc);
 else
  sc->sc_maxlun = 0;


 sc->cam_scsi_sense.opcode = REQUEST_SENSE;
 sc->cam_scsi_test_unit_ready.opcode = TEST_UNIT_READY;


 err = umass_cam_attach_sim(sc);
 if (err) {
  goto detach;
 }

 umass_cam_attach(sc);

 DPRINTF(sc, UDMASS_GEN, "Attach finished\n");

 return (0);

detach:
 umass_detach(dev);
 return (ENXIO);
}
