
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct uftdi_softc {int sc_last_lcr; int sc_super_ucom; int sc_mtx; int sc_ucom; int * sc_xfer; int sc_bitmode; int sc_unit; int sc_dev; int sc_udev; } ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int ENXIO ;
 int FTDI_SIO_SET_DATA_BITS (int) ;
 int FTDI_SIO_SET_DATA_PARITY_NONE ;
 int FTDI_SIO_SET_DATA_STOP_BITS_2 ;
 int MTX_DEF ;
 int UFTDI_BITMODE_NONE ;
 size_t UFTDI_BULK_DT_RD ;
 size_t UFTDI_BULK_DT_WR ;
 int UFTDI_N_TRANSFER ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct uftdi_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ucom_attach (int *,int *,int,struct uftdi_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 int ucom_use_lsr_txbits (int *) ;
 int uftdi_callback ;
 int uftdi_config ;
 int uftdi_detach (int ) ;
 int uftdi_devtype_setup (struct uftdi_softc*,struct usb_attach_arg*) ;
 int usbd_transfer_setup (int ,int *,int *,int ,int ,struct uftdi_softc*,int *) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static int
uftdi_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct uftdi_softc *sc = device_get_softc(dev);
 int error;

 DPRINTF("\n");

 sc->sc_udev = uaa->device;
 sc->sc_dev = dev;
 sc->sc_unit = device_get_unit(dev);
 sc->sc_bitmode = UFTDI_BITMODE_NONE;

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "uftdi", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);


 uftdi_devtype_setup(sc, uaa);

 error = usbd_transfer_setup(uaa->device,
     &uaa->info.bIfaceIndex, sc->sc_xfer, uftdi_config,
     UFTDI_N_TRANSFER, sc, &sc->sc_mtx);

 if (error) {
  device_printf(dev, "allocating USB "
      "transfers failed\n");
  goto detach;
 }

 mtx_lock(&sc->sc_mtx);
 usbd_xfer_set_stall(sc->sc_xfer[UFTDI_BULK_DT_WR]);
 usbd_xfer_set_stall(sc->sc_xfer[UFTDI_BULK_DT_RD]);
 mtx_unlock(&sc->sc_mtx);



 sc->sc_last_lcr =
     (FTDI_SIO_SET_DATA_STOP_BITS_2 |
     FTDI_SIO_SET_DATA_PARITY_NONE |
     FTDI_SIO_SET_DATA_BITS(8));


 ucom_use_lsr_txbits(&sc->sc_ucom);

 error = ucom_attach(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
     &uftdi_callback, &sc->sc_mtx);
 if (error) {
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);

 return (0);

detach:
 uftdi_detach(dev);
 return (ENXIO);
}
