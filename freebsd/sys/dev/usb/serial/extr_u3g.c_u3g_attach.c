
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct usb_interface_descriptor {scalar_t__ bInterfaceClass; int bInterfaceNumber; int bInterfaceProtocol; int bInterfaceSubClass; } ;
struct usb_interface {int dummy; } ;
struct usb_config {int ep_index; } ;
struct TYPE_2__ {int bIfaceIndex; int idVendor; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
struct u3g_softc {int sc_numports; int sc_super_ucom; int sc_mtx; int * sc_ucom; scalar_t__** sc_xfer; int * sc_iface; int sc_udev; } ;
typedef int device_t ;


 int DPRINTF (char*,...) ;
 int ENXIO ;
 int MTX_DEF ;
 int U3GINIT_SAEL_M460 ;
 size_t U3G_BULK_RD ;
 size_t U3G_BULK_WR ;
 size_t U3G_INTR ;
 int U3G_MAXPORTS ;
 int U3G_N_TRANSFER ;
 scalar_t__ UICLASS_VENDOR ;
 int UQ_MSC_EJECT_SAEL_M460 ;
 int USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 int USB_IFACE_MAX ;
 scalar_t__ bootverbose ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct u3g_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int u3g_callback ;
 struct usb_config* u3g_config ;
 int u3g_detach (int ) ;
 scalar_t__ u3g_huawei_is_cdce (int ,int ,int ) ;
 int u3g_sael_m460_init (int ) ;
 int ucom_attach (int *,int *,int,struct u3g_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 scalar_t__ usb_test_quirk (struct usb_attach_arg*,int ) ;
 struct usb_interface* usbd_get_iface (int ,int) ;
 struct usb_interface_descriptor* usbd_get_interface_descriptor (struct usb_interface*) ;
 int usbd_set_parent_iface (int ,int,int) ;
 int usbd_transfer_setup (int ,int*,scalar_t__*,struct usb_config*,int,int *,int *) ;
 int usbd_xfer_set_stall (scalar_t__) ;

__attribute__((used)) static int
u3g_attach(device_t dev)
{
 struct usb_config u3g_config_tmp[U3G_N_TRANSFER];
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct u3g_softc *sc = device_get_softc(dev);
 struct usb_interface *iface;
 struct usb_interface_descriptor *id;
 uint32_t iface_valid;
 int error, type, nports;
 int ep, n;
 uint8_t i;

 DPRINTF("sc=%p\n", sc);

 type = USB_GET_DRIVER_INFO(uaa);
 if (type == U3GINIT_SAEL_M460
     || usb_test_quirk(uaa, UQ_MSC_EJECT_SAEL_M460)) {
  u3g_sael_m460_init(uaa->device);
 }


 for (n = 0; n != U3G_N_TRANSFER; n++)
  u3g_config_tmp[n] = u3g_config[n];

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "u3g", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);

 sc->sc_udev = uaa->device;


 iface_valid = 0;
 for (i = uaa->info.bIfaceIndex; i < USB_IFACE_MAX; i++) {
  iface = usbd_get_iface(uaa->device, i);
  if (iface == ((void*)0))
   break;
  id = usbd_get_interface_descriptor(iface);
  if (id == ((void*)0) || id->bInterfaceClass != UICLASS_VENDOR)
   continue;
  if (u3g_huawei_is_cdce(uaa->info.idVendor,
      id->bInterfaceSubClass, id->bInterfaceProtocol))
   continue;
  usbd_set_parent_iface(uaa->device, i, uaa->info.bIfaceIndex);
  iface_valid |= (1<<i);
 }

 i = 0;
 ep = 0;
 nports = 0;
 while (i < USB_IFACE_MAX) {
  if ((iface_valid & (1<<i)) == 0) {
   i++;
   continue;
  }


  for (n = 0; n < U3G_N_TRANSFER; n++)
   u3g_config_tmp[n].ep_index = ep;


  error = usbd_transfer_setup(uaa->device, &i,
      sc->sc_xfer[nports], u3g_config_tmp, U3G_N_TRANSFER,
      &sc->sc_ucom[nports], &sc->sc_mtx);
  if (error) {

   i++;
   ep = 0;
   continue;
  }

  iface = usbd_get_iface(uaa->device, i);
  id = usbd_get_interface_descriptor(iface);
  sc->sc_iface[nports] = id->bInterfaceNumber;

  if (bootverbose && sc->sc_xfer[nports][U3G_INTR]) {
   device_printf(dev, "port %d supports modem control\n",
          nports);
  }


  mtx_lock(&sc->sc_mtx);
  usbd_xfer_set_stall(sc->sc_xfer[nports][U3G_BULK_WR]);
  usbd_xfer_set_stall(sc->sc_xfer[nports][U3G_BULK_RD]);
  mtx_unlock(&sc->sc_mtx);

  nports++;
  ep++;
  if (nports == U3G_MAXPORTS)
   break;
 }
 if (nports == 0) {
  device_printf(dev, "no ports found\n");
  goto detach;
 }
 sc->sc_numports = nports;

 error = ucom_attach(&sc->sc_super_ucom, sc->sc_ucom,
     sc->sc_numports, sc, &u3g_callback, &sc->sc_mtx);
 if (error) {
  DPRINTF("ucom_attach failed\n");
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);
 device_printf(dev, "Found %u port%s.\n", sc->sc_numports,
     sc->sc_numports > 1 ? "s":"");

 return (0);

detach:
 u3g_detach(dev);
 return (ENXIO);
}
