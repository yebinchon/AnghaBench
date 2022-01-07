
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef int uint16_t ;
struct TYPE_4__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct TYPE_6__ {int rate; scalar_t__ level; scalar_t__ accelfactor; int * syncmask; int packetsize; int resolution; int protocol; } ;
struct TYPE_5__ {int buttons; scalar_t__ hwid; int model; int type; int iftype; } ;
struct atp_softc {scalar_t__ sc_expected_sensor_data_len; int sc_family; int sc_mutex; int sc_callout; scalar_t__ sc_ibtn; scalar_t__ sc_state; TYPE_3__ sc_mode; TYPE_2__ sc_hw; int sc_fifo; int sc_usb_device; int sc_xfer; int sensor_data_interpreter; int * sc_params; int sc_dev; } ;
typedef int device_t ;


 int ATP_LLEVEL_INFO ;
 int ATP_N_TRANSFER ;
 scalar_t__ ATP_SENSOR_DATA_BUF_MAX ;
 int DECODE_FAMILY_FROM_DRIVER_INFO (unsigned long) ;
 size_t DECODE_PRODUCT_FROM_DRIVER_INFO (unsigned long) ;
 int DPRINTF (char*,scalar_t__) ;
 int DPRINTFN (int ,char*,struct atp_softc*) ;
 int ENOMEM ;
 int ENXIO ;
 int GID_OPERATOR ;
 int MOUSE_IF_USB ;
 int MOUSE_MODEL_GENERIC ;
 int MOUSE_MSC_PACKETSIZE ;
 int MOUSE_MSC_SYNC ;
 int MOUSE_MSC_SYNCMASK ;
 int MOUSE_PAD ;
 int MOUSE_PROTO_MSC ;
 int MOUSE_RES_UNKNOWN ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int M_TEMP ;
 int RAW_SENSOR_MODE ;


 int UID_ROOT ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 unsigned long USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 int atp_detach (int ) ;
 int atp_fifo_methods ;
 scalar_t__ atp_set_device_mode (struct atp_softc*,int ) ;
 int atp_xfer_config ;
 int callout_init_mtx (int *,int *,int ) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct atp_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_set_usb_desc (int ) ;
 int * fg_dev_params ;
 int fg_interpret_sensor_data ;
 int free (void*,int ) ;
 int hid_input ;
 scalar_t__ hid_report_size (void*,int ,int ,int *) ;
 int mtx_init (int *,char*,int *,int) ;
 scalar_t__ usb_fifo_attach (int ,struct atp_softc*,int *,int *,int *,int ,int,int ,int ,int ,int) ;
 scalar_t__ usbd_errstr (scalar_t__) ;
 scalar_t__ usbd_req_get_hid_desc (int ,int *,void**,int *,int ,int ) ;
 scalar_t__ usbd_transfer_setup (int ,int *,int ,int ,int ,struct atp_softc*,int *) ;
 int * wsp_dev_params ;
 int wsp_interpret_sensor_data ;

__attribute__((used)) static int
atp_attach(device_t dev)
{
 struct atp_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 usb_error_t err;
 void *descriptor_ptr = ((void*)0);
 uint16_t descriptor_len;
 unsigned long di;

 DPRINTFN(ATP_LLEVEL_INFO, "sc=%p\n", sc);

 sc->sc_dev = dev;
 sc->sc_usb_device = uaa->device;


 if (usbd_req_get_hid_desc(uaa->device, ((void*)0), &descriptor_ptr,
     &descriptor_len, M_TEMP, uaa->info.bIfaceIndex) !=
     USB_ERR_NORMAL_COMPLETION)
  return (ENXIO);


 sc->sc_expected_sensor_data_len = hid_report_size(descriptor_ptr,
     descriptor_len, hid_input, ((void*)0));
 free(descriptor_ptr, M_TEMP);

 if ((sc->sc_expected_sensor_data_len <= 0) ||
     (sc->sc_expected_sensor_data_len > ATP_SENSOR_DATA_BUF_MAX)) {
  DPRINTF("atp_attach: datalength invalid or too large: %d\n",
   sc->sc_expected_sensor_data_len);
  return (ENXIO);
 }
 if ((err = atp_set_device_mode(sc, RAW_SENSOR_MODE)) != 0) {
  DPRINTF("failed to set mode to 'RAW_SENSOR' (%d)\n", err);
  return (ENXIO);
 }

 mtx_init(&sc->sc_mutex, "atpmtx", ((void*)0), MTX_DEF | MTX_RECURSE);

 di = USB_GET_DRIVER_INFO(uaa);

 sc->sc_family = DECODE_FAMILY_FROM_DRIVER_INFO(di);

 switch(sc->sc_family) {
 case 129:
  sc->sc_params =
      &fg_dev_params[DECODE_PRODUCT_FROM_DRIVER_INFO(di)];
  sc->sensor_data_interpreter = fg_interpret_sensor_data;
  break;
 case 128:
  sc->sc_params =
      &wsp_dev_params[DECODE_PRODUCT_FROM_DRIVER_INFO(di)];
  sc->sensor_data_interpreter = wsp_interpret_sensor_data;
  break;
 default:
  goto detach;
 }

 err = usbd_transfer_setup(uaa->device,
     &uaa->info.bIfaceIndex, sc->sc_xfer, atp_xfer_config,
     ATP_N_TRANSFER, sc, &sc->sc_mutex);
 if (err) {
  DPRINTF("error=%s\n", usbd_errstr(err));
  goto detach;
 }

 if (usb_fifo_attach(sc->sc_usb_device, sc, &sc->sc_mutex,
     &atp_fifo_methods, &sc->sc_fifo,
     device_get_unit(dev), -1, uaa->info.bIfaceIndex,
     UID_ROOT, GID_OPERATOR, 0644)) {
  goto detach;
 }

 device_set_usb_desc(dev);

 sc->sc_hw.buttons = 3;
 sc->sc_hw.iftype = MOUSE_IF_USB;
 sc->sc_hw.type = MOUSE_PAD;
 sc->sc_hw.model = MOUSE_MODEL_GENERIC;
 sc->sc_hw.hwid = 0;
 sc->sc_mode.protocol = MOUSE_PROTO_MSC;
 sc->sc_mode.rate = -1;
 sc->sc_mode.resolution = MOUSE_RES_UNKNOWN;
 sc->sc_mode.packetsize = MOUSE_MSC_PACKETSIZE;
 sc->sc_mode.syncmask[0] = MOUSE_MSC_SYNCMASK;
 sc->sc_mode.syncmask[1] = MOUSE_MSC_SYNC;
 sc->sc_mode.accelfactor = 0;
 sc->sc_mode.level = 0;

 sc->sc_state = 0;
 sc->sc_ibtn = 0;

 callout_init_mtx(&sc->sc_callout, &sc->sc_mutex, 0);

 return (0);

detach:
 atp_detach(dev);
 return (ENOMEM);
}
