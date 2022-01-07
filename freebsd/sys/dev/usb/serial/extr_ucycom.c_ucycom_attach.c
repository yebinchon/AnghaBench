
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int bIfaceNum; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
struct ucycom_softc {scalar_t__ sc_model; int sc_flen; int sc_ilen; int sc_olen; int sc_super_ucom; int sc_mtx; int sc_ucom; int sc_xfer; int sc_iface_no; int sc_oid; int sc_iid; int sc_fid; int sc_udev; } ;
typedef scalar_t__ int32_t ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int ENXIO ;
 int MTX_DEF ;
 int M_USBDEV ;
 int UCYCOM_IFACE_INDEX ;
 int UCYCOM_MAX_IOLEN ;
 int UCYCOM_N_TRANSFER ;
 scalar_t__ USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct ucycom_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_usb_desc (int ) ;
 int free (void*,int ) ;
 int hid_feature ;
 int hid_input ;
 int hid_output ;
 void* hid_report_size (void*,int ,int ,int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ ucom_attach (int *,int *,int,struct ucycom_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 int ucycom_callback ;
 int ucycom_config ;
 int ucycom_detach (int ) ;
 int usbd_errstr (scalar_t__) ;
 scalar_t__ usbd_req_get_hid_desc (int ,int *,void**,int *,int ,int ) ;
 scalar_t__ usbd_transfer_setup (int ,int *,int ,int ,int ,struct ucycom_softc*,int *) ;

__attribute__((used)) static int
ucycom_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct ucycom_softc *sc = device_get_softc(dev);
 void *urd_ptr = ((void*)0);
 int32_t error;
 uint16_t urd_len;
 uint8_t iface_index;

 sc->sc_udev = uaa->device;

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "ucycom", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);

 DPRINTF("\n");


 sc->sc_model = USB_GET_DRIVER_INFO(uaa);
 if (sc->sc_model == 0) {
  device_printf(dev, "unsupported device\n");
  goto detach;
 }
 device_printf(dev, "Cypress CY7C%X USB to RS232 bridge\n", sc->sc_model);



 error = usbd_req_get_hid_desc(uaa->device, ((void*)0),
     &urd_ptr, &urd_len, M_USBDEV,
     UCYCOM_IFACE_INDEX);

 if (error) {
  device_printf(dev, "failed to get report "
      "descriptor: %s\n",
      usbd_errstr(error));
  goto detach;
 }


 sc->sc_flen = hid_report_size(urd_ptr, urd_len, hid_feature, &sc->sc_fid);
 sc->sc_ilen = hid_report_size(urd_ptr, urd_len, hid_input, &sc->sc_iid);
 sc->sc_olen = hid_report_size(urd_ptr, urd_len, hid_output, &sc->sc_oid);

 if ((sc->sc_ilen > UCYCOM_MAX_IOLEN) || (sc->sc_ilen < 1) ||
     (sc->sc_olen > UCYCOM_MAX_IOLEN) || (sc->sc_olen < 2) ||
     (sc->sc_flen > UCYCOM_MAX_IOLEN) || (sc->sc_flen < 5)) {
  device_printf(dev, "invalid report size i=%d, o=%d, f=%d, max=%d\n",
      sc->sc_ilen, sc->sc_olen, sc->sc_flen,
      UCYCOM_MAX_IOLEN);
  goto detach;
 }
 sc->sc_iface_no = uaa->info.bIfaceNum;

 iface_index = UCYCOM_IFACE_INDEX;
 error = usbd_transfer_setup(uaa->device, &iface_index,
     sc->sc_xfer, ucycom_config, UCYCOM_N_TRANSFER,
     sc, &sc->sc_mtx);
 if (error) {
  device_printf(dev, "allocating USB "
      "transfers failed\n");
  goto detach;
 }
 error = ucom_attach(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
     &ucycom_callback, &sc->sc_mtx);
 if (error) {
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);

 if (urd_ptr) {
  free(urd_ptr, M_USBDEV);
 }

 return (0);

detach:
 if (urd_ptr) {
  free(urd_ptr, M_USBDEV);
 }
 ucycom_detach(dev);
 return (ENXIO);
}
