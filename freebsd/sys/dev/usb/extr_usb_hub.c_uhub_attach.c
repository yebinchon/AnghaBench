
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_port {scalar_t__ restartcnt; scalar_t__ device_index; } ;
struct usb_hub_ss_descriptor {int bNbrPorts; int bPwrOn2PwrGood; } ;
struct usb_hub_descriptor {int bNbrPorts; int bPwrOn2PwrGood; } ;
struct usb_hub {int nports; struct usb_port* ports; int portpower; TYPE_2__* tt_msg; struct usb_device* hubudev; int * explore; struct uhub_softc* hubsoftc; } ;
struct TYPE_6__ {scalar_t__ self_powered; } ;
struct usb_device {int speed; struct usb_hub* hub; TYPE_3__ flags; struct usb_device* parent_hub; scalar_t__ depth; } ;
struct usb_attach_arg {struct usb_device* device; } ;
struct uhub_softc {scalar_t__ sc_disable_enumeration; scalar_t__ sc_disable_port_power; int sc_mtx; int * sc_xfer; struct usb_hub sc_hub; int sc_dev; struct usb_device* sc_udev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int hub ;
typedef int device_t ;
struct TYPE_4__ {int * pm_callback; } ;
struct TYPE_5__ {struct usb_device* udev; TYPE_1__ hdr; } ;


 int CTLFLAG_RWTUN ;
 int DPRINTF (char*,...) ;
 int DPRINTFN (int,char*,...) ;
 int ENXIO ;
 int MTX_DEF ;
 int M_USBDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,scalar_t__*,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int UHD_NOT_REMOV (struct usb_hub_ss_descriptor*,int) ;
 int UHD_PWRON_FACTOR ;
 int UHF_PORT_POWER ;
 size_t UHUB_INTR_TRANSFER ;
 scalar_t__ UHUB_IS_MULTI_TT (struct uhub_softc*) ;
 int UHUB_N_TRANSFER ;
 int USB_MAX_PORTS ;
 int USB_MAX_POWER ;
 int USB_MIN_POWER ;
 int USB_MS_TO_TICKS (int) ;
 int USB_MTX_LOCK (int *) ;
 int USB_MTX_UNLOCK (int *) ;
 int USB_POWER_DOWN_TIME ;
 int USB_POWER_MODE_SAVE ;




 struct usb_attach_arg* device_get_ivars (int ) ;
 struct uhub_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_usb_desc (int ) ;
 int free (struct usb_hub*,int ) ;
 struct usb_hub* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int uhub_config ;
 int uhub_explore ;
 scalar_t__ uhub_is_too_deep (struct usb_device*) ;
 int uhub_reset_tt_proc ;
 scalar_t__ usb_disable_port_power ;
 int usb_extra_power_up_time ;
 int usb_pause_mtx (int *,int ) ;
 int usbd_errstr (scalar_t__) ;
 scalar_t__ usbd_req_clear_port_feature (struct usb_device*,int *,int,int ) ;
 scalar_t__ usbd_req_get_hub_descriptor (struct usb_device*,int *,struct usb_hub_ss_descriptor*,int) ;
 scalar_t__ usbd_req_get_ss_hub_descriptor (struct usb_device*,int *,struct usb_hub_ss_descriptor*,int) ;
 scalar_t__ usbd_req_set_hub_depth (struct usb_device*,int *,scalar_t__) ;
 scalar_t__ usbd_req_set_port_feature (struct usb_device*,int *,int,int ) ;
 scalar_t__ usbd_set_alt_interface_index (struct usb_device*,int ,int) ;
 int usbd_set_power_mode (struct usb_device*,int ) ;
 scalar_t__ usbd_transfer_setup (struct usb_device*,int*,int *,int ,int ,struct uhub_softc*,int *) ;
 int usbd_transfer_start (int ) ;
 int usbd_transfer_unsetup (int *,int ) ;

int
uhub_attach(device_t dev)
{
 struct uhub_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct usb_device *udev = uaa->device;
 struct usb_device *parent_hub = udev->parent_hub;
 struct usb_hub *hub;
 struct usb_hub_descriptor hubdesc20;
 struct usb_hub_ss_descriptor hubdesc30;




 uint16_t pwrdly;
 uint16_t nports;
 uint8_t x;
 uint8_t portno;
 uint8_t removable;
 uint8_t iface_index;
 usb_error_t err;

 sc->sc_udev = udev;
 sc->sc_dev = dev;

 mtx_init(&sc->sc_mtx, "USB HUB mutex", ((void*)0), MTX_DEF);

 device_set_usb_desc(dev);

 DPRINTFN(2, "depth=%d selfpowered=%d, parent=%p, "
     "parent->selfpowered=%d\n",
     udev->depth,
     udev->flags.self_powered,
     parent_hub,
     parent_hub ?
     parent_hub->flags.self_powered : 0);

 if (uhub_is_too_deep(udev)) {
  DPRINTFN(0, "HUB at depth %d, "
      "exceeds maximum. HUB ignored\n", (int)udev->depth);
  goto error;
 }

 if (!udev->flags.self_powered && parent_hub &&
     !parent_hub->flags.self_powered) {
  DPRINTFN(0, "Bus powered HUB connected to "
      "bus powered HUB. HUB ignored\n");
  goto error;
 }

 if (UHUB_IS_MULTI_TT(sc)) {
  err = usbd_set_alt_interface_index(udev, 0, 1);
  if (err) {
   device_printf(dev, "MTT could not be enabled\n");
   goto error;
  }
  device_printf(dev, "MTT enabled\n");
 }



 DPRINTFN(2, "Getting HUB descriptor\n");

 switch (udev->speed) {
 case 129:
 case 131:
 case 130:

  err = usbd_req_get_hub_descriptor(udev, ((void*)0), &hubdesc20, 1);
  if (err) {
   DPRINTFN(0, "getting USB 2.0 HUB descriptor failed,"
       "error=%s\n", usbd_errstr(err));
   goto error;
  }

  nports = hubdesc20.bNbrPorts;


  pwrdly = ((hubdesc20.bPwrOn2PwrGood * UHD_PWRON_FACTOR) +
      usb_extra_power_up_time);


  if (nports >= 8) {

   if (nports > 127) {
    DPRINTFN(0, "Invalid number of USB 2.0 ports,"
        "error=%s\n", usbd_errstr(err));
    goto error;
   }

   err = usbd_req_get_hub_descriptor(udev, ((void*)0), &hubdesc20, nports);

   if (err) {
    DPRINTFN(0, "Getting USB 2.0 HUB descriptor failed,"
        "error=%s\n", usbd_errstr(err));
    goto error;
   }
   if (hubdesc20.bNbrPorts != nports) {
    DPRINTFN(0, "Number of ports changed\n");
    goto error;
   }
  }
  break;
 case 128:
  if (udev->parent_hub != ((void*)0)) {
   err = usbd_req_set_hub_depth(udev, ((void*)0),
       udev->depth - 1);
   if (err) {
    DPRINTFN(0, "Setting USB 3.0 HUB depth failed,"
        "error=%s\n", usbd_errstr(err));
    goto error;
   }
  }
  err = usbd_req_get_ss_hub_descriptor(udev, ((void*)0), &hubdesc30, 1);
  if (err) {
   DPRINTFN(0, "Getting USB 3.0 HUB descriptor failed,"
       "error=%s\n", usbd_errstr(err));
   goto error;
  }

  nports = hubdesc30.bNbrPorts;


  pwrdly = ((hubdesc30.bPwrOn2PwrGood * UHD_PWRON_FACTOR) +
      usb_extra_power_up_time);


  if (nports >= 8) {

   if (nports > ((udev->parent_hub != ((void*)0)) ? 15 : 127)) {
    DPRINTFN(0, "Invalid number of USB 3.0 ports,"
        "error=%s\n", usbd_errstr(err));
    goto error;
   }

   err = usbd_req_get_ss_hub_descriptor(udev, ((void*)0), &hubdesc30, nports);

   if (err) {
    DPRINTFN(0, "Getting USB 2.0 HUB descriptor failed,"
        "error=%s\n", usbd_errstr(err));
    goto error;
   }
   if (hubdesc30.bNbrPorts != nports) {
    DPRINTFN(0, "Number of ports changed\n");
    goto error;
   }
  }
  break;
 default:
  DPRINTF("Assuming HUB has only one port\n");

  nports = 1;

  pwrdly = ((10 * UHD_PWRON_FACTOR) + usb_extra_power_up_time);
  break;
 }
 if (nports == 0) {
  DPRINTFN(0, "portless HUB\n");
  goto error;
 }
 if (nports > USB_MAX_PORTS) {
  DPRINTF("Port limit exceeded\n");
  goto error;
 }

 hub = malloc(sizeof(hub[0]) + (sizeof(hub->ports[0]) * nports),
     M_USBDEV, M_WAITOK | M_ZERO);

 if (hub == ((void*)0))
  goto error;



 udev->hub = hub;


 hub->hubsoftc = sc;
 hub->explore = &uhub_explore;
 hub->nports = nports;
 hub->hubudev = udev;







 if (udev->flags.self_powered) {
  hub->portpower = USB_MAX_POWER;
 } else {
  hub->portpower = USB_MIN_POWER;
 }


 iface_index = 0;
 if (udev->parent_hub == ((void*)0)) {

  err = 0;
 } else {

  err = usbd_transfer_setup(udev, &iface_index, sc->sc_xfer,
      uhub_config, UHUB_N_TRANSFER, sc, &sc->sc_mtx);
 }
 if (err) {
  DPRINTFN(0, "cannot setup interrupt transfer, "
      "errstr=%s\n", usbd_errstr(err));
  goto error;
 }

 usb_pause_mtx(((void*)0), USB_MS_TO_TICKS(USB_POWER_DOWN_TIME));
 removable = 0;

 for (x = 0; x != nports; x++) {

  struct usb_port *up = hub->ports + x;

  up->device_index = 0;
  up->restartcnt = 0;
  portno = x + 1;


  switch (udev->speed) {
  case 129:
  case 131:
  case 130:
   if (!UHD_NOT_REMOV(&hubdesc20, portno))
    removable++;
   break;
  case 128:
   if (!UHD_NOT_REMOV(&hubdesc30, portno))
    removable++;
   break;
  default:
   DPRINTF("Assuming removable port\n");
   removable++;
   break;
  }
  if (err == 0) {
    DPRINTFN(2, "Turning port %d power on\n", portno);
    err = usbd_req_set_port_feature(udev, ((void*)0),
        portno, UHF_PORT_POWER);



  }
  if (err != 0) {
   DPRINTFN(0, "port %d power on or off failed, %s\n",
       portno, usbd_errstr(err));
  }
  DPRINTF("turn on port %d power\n",
      portno);


  usb_pause_mtx(((void*)0), USB_MS_TO_TICKS(pwrdly));
 }

 device_printf(dev, "%d port%s with %d "
     "removable, %s powered\n", nports, (nports != 1) ? "s" : "",
     removable, udev->flags.self_powered ? "self" : "bus");



 USB_MTX_LOCK(&sc->sc_mtx);
 usbd_transfer_start(sc->sc_xfer[UHUB_INTR_TRANSFER]);
 USB_MTX_UNLOCK(&sc->sc_mtx);



 usbd_set_power_mode(udev, USB_POWER_MODE_SAVE);

 return (0);

error:
 usbd_transfer_unsetup(sc->sc_xfer, UHUB_N_TRANSFER);


 free(udev->hub, M_USBDEV);

 udev->hub = ((void*)0);

 mtx_destroy(&sc->sc_mtx);

 return (ENXIO);
}
