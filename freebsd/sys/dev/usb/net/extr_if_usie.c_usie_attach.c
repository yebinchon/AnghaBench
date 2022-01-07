
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct usie_softc {size_t sc_nucom; int sc_if_ifnum; int* sc_uc_ifnum; struct ifnet* sc_ifp; int sc_mtx; struct usie_softc* sc_ucom; int sc_super_ucom; int *** sc_uc_xfer; int ** sc_if_xfer; int sc_if_sync_ch; int sc_if_sync_task; int sc_if_status_task; int sc_dev; int sc_udev; } ;
struct usb_interface_descriptor {scalar_t__ bInterfaceClass; int bInterfaceNumber; int bNumEndpoints; } ;
struct usb_interface {int dummy; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct TYPE_4__ {int bIfaceIndex; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
struct TYPE_5__ {int ifq_drv_maxlen; } ;
struct ifnet {TYPE_2__ if_snd; int if_output; int if_start; int if_ioctl; int if_init; int if_flags; int if_mtu; struct usie_softc* if_softc; } ;
typedef int fwattr ;
typedef int device_t ;


 int DLT_RAW ;
 int DPRINTF (char*,...) ;
 int ENOMEM ;
 int IFF_NOARP ;
 int IFQ_SET_MAXLEN (TYPE_2__*,int ) ;
 int IFQ_SET_READY (TYPE_2__*) ;
 int IFT_OTHER ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int TASK_INIT (int *,int ,int ,struct usie_softc*) ;
 scalar_t__ UICLASS_VENDOR ;
 int USB_POWER_MODE_ON ;
 int USB_POWER_MODE_SAVE ;
 int USETW (int ,int) ;
 int USIE_FW_ATTR ;
 int USIE_FW_DHCP ;
 scalar_t__ USIE_IFACE_MAX ;
 scalar_t__ USIE_IF_N_XFER ;
 int USIE_MTU_MAX ;
 int USIE_PM_AUTO ;
 int USIE_POWER ;
 size_t USIE_UCOM_MAX ;
 scalar_t__ USIE_UC_N_XFER ;
 int UT_READ_VENDOR_DEVICE ;
 int UT_WRITE_VENDOR_DEVICE ;
 int bpfattach (struct ifnet*,int ,int ) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct usie_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_usb_desc (int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_initname (struct ifnet*,char*,int ) ;
 int ifqmaxlen ;
 int mtx_init (int *,char*,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ucom_attach (int *,struct usie_softc*,size_t,struct usie_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 int usbd_errstr (int) ;
 struct usb_interface* usbd_get_iface (int ,scalar_t__) ;
 struct usb_interface_descriptor* usbd_get_interface_descriptor (struct usb_interface*) ;
 int usbd_set_parent_iface (int ,scalar_t__,int ) ;
 int usbd_set_power_mode (int ,int ) ;
 int usbd_transfer_setup (int ,scalar_t__*,int **,scalar_t__,scalar_t__,struct usie_softc*,int *) ;
 int usbd_xfer_set_stall (int *) ;
 int usie_detach (int ) ;
 scalar_t__ usie_do_request (struct usie_softc*,struct usb_device_request*,int*) ;
 scalar_t__ usie_if_config ;
 int usie_if_init ;
 int usie_if_ioctl ;
 int usie_if_output ;
 int usie_if_start ;
 int usie_if_status_cb ;
 int usie_if_sync_cb ;
 int usie_uc_callback ;
 scalar_t__ usie_uc_config ;

__attribute__((used)) static int
usie_attach(device_t self)
{
 struct usie_softc *sc = device_get_softc(self);
 struct usb_attach_arg *uaa = device_get_ivars(self);
 struct ifnet *ifp;
 struct usb_interface *iface;
 struct usb_interface_descriptor *id;
 struct usb_device_request req;
 int err;
 uint16_t fwattr;
 uint8_t iface_index;
 uint8_t ifidx;
 uint8_t start;

 device_set_usb_desc(self);
 sc->sc_udev = uaa->device;
 sc->sc_dev = self;

 mtx_init(&sc->sc_mtx, "usie", MTX_NETWORK_LOCK, MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);

 TASK_INIT(&sc->sc_if_status_task, 0, usie_if_status_cb, sc);
 TASK_INIT(&sc->sc_if_sync_task, 0, usie_if_sync_cb, sc);

 usb_callout_init_mtx(&sc->sc_if_sync_ch, &sc->sc_mtx, 0);

 mtx_lock(&sc->sc_mtx);


 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = USIE_POWER;
 USETW(req.wValue, 0);
 USETW(req.wIndex, 0);
 USETW(req.wLength, 0);
 if (usie_do_request(sc, &req, ((void*)0))) {
  mtx_unlock(&sc->sc_mtx);
  goto detach;
 }

 fwattr = 0;
 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = USIE_FW_ATTR;
 USETW(req.wValue, 0);
 USETW(req.wIndex, 0);
 USETW(req.wLength, sizeof(fwattr));
 if (usie_do_request(sc, &req, &fwattr)) {
  mtx_unlock(&sc->sc_mtx);
  goto detach;
 }
 mtx_unlock(&sc->sc_mtx);


 DPRINTF("fwattr=%x\n", fwattr);
 if (!(fwattr & USIE_FW_DHCP)) {
  device_printf(self, "DHCP is not supported. A firmware upgrade might be needed.\n");
 }


 sc->sc_nucom = 0;
 for (ifidx = 0; ifidx < USIE_IFACE_MAX; ifidx++) {
  iface = usbd_get_iface(uaa->device, ifidx);
  if (iface == ((void*)0))
   break;

  id = usbd_get_interface_descriptor(iface);
  if ((id == ((void*)0)) || (id->bInterfaceClass != UICLASS_VENDOR))
   continue;


  if (id->bInterfaceNumber >= 7 && id->bNumEndpoints == 3) {
   sc->sc_if_ifnum = id->bInterfaceNumber;
   iface_index = ifidx;

   DPRINTF("ifnum=%d, ifidx=%d\n",
       sc->sc_if_ifnum, ifidx);

   err = usbd_transfer_setup(uaa->device,
       &iface_index, sc->sc_if_xfer, usie_if_config,
       USIE_IF_N_XFER, sc, &sc->sc_mtx);

   if (err == 0)
    continue;

   device_printf(self,
       "could not allocate USB transfers on "
       "iface_index=%d, err=%s\n",
       iface_index, usbd_errstr(err));
   goto detach;
  }


  if (sc->sc_nucom >= USIE_UCOM_MAX)
   continue;

  usbd_set_parent_iface(uaa->device, ifidx,
      uaa->info.bIfaceIndex);

  DPRINTF("NumEndpoints=%d bInterfaceNumber=%d\n",
      id->bNumEndpoints, id->bInterfaceNumber);

  if (id->bNumEndpoints == 2) {
   sc->sc_uc_xfer[sc->sc_nucom][0] = ((void*)0);
   start = 1;
  } else
   start = 0;

  err = usbd_transfer_setup(uaa->device, &ifidx,
      sc->sc_uc_xfer[sc->sc_nucom] + start,
      usie_uc_config + start, USIE_UC_N_XFER - start,
      &sc->sc_ucom[sc->sc_nucom], &sc->sc_mtx);

  if (err != 0) {
   DPRINTF("usbd_transfer_setup error=%s\n", usbd_errstr(err));
   continue;
  }

  mtx_lock(&sc->sc_mtx);
  for (; start < USIE_UC_N_XFER; start++)
   usbd_xfer_set_stall(sc->sc_uc_xfer[sc->sc_nucom][start]);
  mtx_unlock(&sc->sc_mtx);

  sc->sc_uc_ifnum[sc->sc_nucom] = id->bInterfaceNumber;

  sc->sc_nucom++;
 }

 if (sc->sc_nucom == 0) {
  device_printf(self, "no comports found\n");
  goto detach;
 }

 err = ucom_attach(&sc->sc_super_ucom, sc->sc_ucom,
     sc->sc_nucom, sc, &usie_uc_callback, &sc->sc_mtx);

 if (err != 0) {
  DPRINTF("ucom_attach failed\n");
  goto detach;
 }
 DPRINTF("Found %d interfaces.\n", sc->sc_nucom);


 sc->sc_ifp = ifp = if_alloc(IFT_OTHER);

 if (ifp == ((void*)0)) {
  device_printf(self, "Could not allocate a network interface\n");
  goto detach;
 }
 if_initname(ifp, "usie", device_get_unit(self));

 ifp->if_softc = sc;
 ifp->if_mtu = USIE_MTU_MAX;
 ifp->if_flags |= IFF_NOARP;
 ifp->if_init = usie_if_init;
 ifp->if_ioctl = usie_if_ioctl;
 ifp->if_start = usie_if_start;
 ifp->if_output = usie_if_output;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifqmaxlen);
 ifp->if_snd.ifq_drv_maxlen = ifqmaxlen;
 IFQ_SET_READY(&ifp->if_snd);

 if_attach(ifp);
 bpfattach(ifp, DLT_RAW, 0);

 if (fwattr & USIE_PM_AUTO) {
  usbd_set_power_mode(uaa->device, USB_POWER_MODE_SAVE);
  DPRINTF("enabling automatic suspend and resume\n");
 } else {
  usbd_set_power_mode(uaa->device, USB_POWER_MODE_ON);
  DPRINTF("USB power is always ON\n");
 }

 DPRINTF("device attached\n");
 return (0);

detach:
 usie_detach(self);
 return (ENOMEM);
}
