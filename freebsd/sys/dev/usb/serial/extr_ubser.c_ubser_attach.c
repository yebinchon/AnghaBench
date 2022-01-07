
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct TYPE_3__ {int bIfaceIndex; scalar_t__ bIfaceNum; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
struct ubser_softc {scalar_t__ sc_numser; scalar_t__ sc_tx_size; int sc_mtx; int * sc_xfer; int sc_super_ucom; TYPE_2__* sc_ucom; int sc_iface_index; scalar_t__ sc_iface_no; int sc_udev; } ;
typedef int device_t ;
struct TYPE_4__ {size_t sc_portno; } ;


 int DPRINTFN (int ,char*) ;
 int ENXIO ;
 int MTX_DEF ;
 size_t UBSER_BULK_DT_RD ;
 size_t UBSER_BULK_DT_WR ;
 int UBSER_N_TRANSFER ;
 scalar_t__ UBSER_UNIT_MAX ;
 int USB_DEFAULT_TIMEOUT ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_INTERFACE ;
 int VENDOR_GET_NUMSER ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct ubser_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ubser_callback ;
 int ubser_config ;
 int ubser_detach (int ) ;
 int ucom_attach (int *,TYPE_2__*,size_t,struct ubser_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 int usbd_do_request_flags (int ,int *,struct usb_device_request*,scalar_t__*,int ,int *,int ) ;
 scalar_t__ usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int *,int ,int ,struct ubser_softc*,int *) ;
 int usbd_transfer_start (int ) ;
 scalar_t__ usbd_xfer_max_len (int ) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static int
ubser_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct ubser_softc *sc = device_get_softc(dev);
 struct usb_device_request req;
 uint8_t n;
 int error;

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "ubser", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);

 sc->sc_iface_no = uaa->info.bIfaceNum;
 sc->sc_iface_index = uaa->info.bIfaceIndex;
 sc->sc_udev = uaa->device;


 req.bmRequestType = UT_READ_VENDOR_INTERFACE;
 req.bRequest = VENDOR_GET_NUMSER;
 USETW(req.wValue, 0);
 req.wIndex[0] = sc->sc_iface_no;
 req.wIndex[1] = 0;
 USETW(req.wLength, 1);
 error = usbd_do_request_flags(uaa->device, ((void*)0),
     &req, &sc->sc_numser,
     0, ((void*)0), USB_DEFAULT_TIMEOUT);

 if (error || (sc->sc_numser == 0)) {
  device_printf(dev, "failed to get number "
      "of serial ports: %s\n",
      usbd_errstr(error));
  goto detach;
 }
 if (sc->sc_numser > UBSER_UNIT_MAX)
  sc->sc_numser = UBSER_UNIT_MAX;

 device_printf(dev, "found %i serials\n", sc->sc_numser);

 error = usbd_transfer_setup(uaa->device, &sc->sc_iface_index,
     sc->sc_xfer, ubser_config, UBSER_N_TRANSFER, sc, &sc->sc_mtx);
 if (error) {
  goto detach;
 }
 sc->sc_tx_size = usbd_xfer_max_len(sc->sc_xfer[UBSER_BULK_DT_WR]);

 if (sc->sc_tx_size == 0) {
  DPRINTFN(0, "invalid tx_size\n");
  goto detach;
 }


 for (n = 0; n < sc->sc_numser; n++) {
  sc->sc_ucom[n].sc_portno = n;
 }

 error = ucom_attach(&sc->sc_super_ucom, sc->sc_ucom,
     sc->sc_numser, sc, &ubser_callback, &sc->sc_mtx);
 if (error) {
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);

 mtx_lock(&sc->sc_mtx);
 usbd_xfer_set_stall(sc->sc_xfer[UBSER_BULK_DT_WR]);
 usbd_xfer_set_stall(sc->sc_xfer[UBSER_BULK_DT_RD]);
 usbd_transfer_start(sc->sc_xfer[UBSER_BULK_DT_RD]);
 mtx_unlock(&sc->sc_mtx);

 return (0);

detach:
 ubser_detach(dev);
 return (ENXIO);
}
