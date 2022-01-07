
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct usb_xfer {int dummy; } ;
struct TYPE_2__ {scalar_t__ idProduct; int bIfaceNum; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct umct_softc {int sc_swap_cb; int sc_obufsize; int sc_super_ucom; int sc_mtx; int sc_ucom; struct usb_xfer** sc_xfer; int sc_iface_no; int sc_unit; int sc_udev; } ;
typedef scalar_t__ int32_t ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 size_t UMCT_BULK_DT_RD ;
 size_t UMCT_BULK_DT_WR ;
 int UMCT_IFACE_INDEX ;
 size_t UMCT_INTR_DT_RD ;
 int UMCT_N_TRANSFER ;
 scalar_t__ USB_PRODUCT_MCT_SITECOM_USB232 ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct umct_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ ucom_attach (int *,int *,int,struct umct_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 int umct_callback ;
 int umct_config ;
 int umct_detach (int ) ;
 scalar_t__ usbd_transfer_setup (int ,int *,struct usb_xfer**,int ,int ,struct umct_softc*,int *) ;
 int usbd_xfer_max_framelen (struct usb_xfer*) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;

__attribute__((used)) static int
umct_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct umct_softc *sc = device_get_softc(dev);
 int32_t error;
 uint16_t maxp;
 uint8_t iface_index;

 sc->sc_udev = uaa->device;
 sc->sc_unit = device_get_unit(dev);

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "umct", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);

 sc->sc_iface_no = uaa->info.bIfaceNum;

 iface_index = UMCT_IFACE_INDEX;
 error = usbd_transfer_setup(uaa->device, &iface_index,
     sc->sc_xfer, umct_config, UMCT_N_TRANSFER, sc, &sc->sc_mtx);

 if (error) {
  device_printf(dev, "allocating USB "
      "transfers failed\n");
  goto detach;
 }






 maxp = usbd_xfer_max_framelen(sc->sc_xfer[UMCT_BULK_DT_RD]);
 if (maxp == 0x2) {



  struct usb_xfer *temp = sc->sc_xfer[UMCT_INTR_DT_RD];

  sc->sc_xfer[UMCT_INTR_DT_RD] = sc->sc_xfer[UMCT_BULK_DT_RD];
  sc->sc_xfer[UMCT_BULK_DT_RD] = temp;
  sc->sc_swap_cb = 1;
 }

 sc->sc_obufsize = usbd_xfer_max_len(sc->sc_xfer[UMCT_BULK_DT_WR]);

 if (uaa->info.idProduct == USB_PRODUCT_MCT_SITECOM_USB232) {
  if (sc->sc_obufsize > 16) {
   sc->sc_obufsize = 16;
  }
 }
 error = ucom_attach(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
     &umct_callback, &sc->sc_mtx);
 if (error) {
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);

 return (0);

detach:
 umct_detach(dev);
 return (ENXIO);
}
