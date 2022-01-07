
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device {int speed; int depth; int bus; TYPE_3__* parent_hub; TYPE_1__* hub; } ;
struct TYPE_8__ {int port_status; int port_change; } ;
struct uhub_softc {scalar_t__ sc_disable_enumeration; struct usb_device* sc_udev; TYPE_4__ sc_st; int sc_dev; } ;
typedef enum usb_hc_mode { ____Placeholder_usb_hc_mode } usb_hc_mode ;
typedef enum usb_dev_speed { ____Placeholder_usb_dev_speed } usb_dev_speed ;
struct TYPE_6__ {int usb_mode; } ;
struct TYPE_7__ {TYPE_2__ flags; } ;
struct TYPE_5__ {int ports; } ;


 int DPRINTF (char*,...) ;
 int DPRINTFN (int ,char*,...) ;
 int UHF_C_PORT_CONNECTION ;
 int UHF_PORT_ENABLE ;
 int UHF_PORT_SUSPEND ;
 int UPS_CURRENT_CONNECT_STATUS ;
 int UPS_C_CONNECT_STATUS ;


 int UPS_OTHER_SPEED ;
 int UPS_PORT_ENABLED ;
 int UPS_PORT_MODE_DEVICE ;
 int UPS_PORT_POWER ;
 int UPS_PORT_POWER_SS ;
 int UPS_SUSPEND ;
 int USB_MODE_DEVICE ;
 int USB_MODE_HOST ;
 int USB_MS_TO_TICKS (int ) ;




 scalar_t__ uhub_read_port_status (struct uhub_softc*,int) ;
 struct usb_device* usb_alloc_device (int ,int ,struct usb_device*,int,int,int,int,int) ;
 struct usb_device* usb_bus_port_get_device (int ,int) ;
 scalar_t__ usb_disable_enumeration ;
 int usb_free_device (struct usb_device*,int ) ;
 int usb_pause_mtx (int *,int ) ;
 int usb_port_powerup_delay ;
 int usbd_errstr (scalar_t__) ;
 scalar_t__ usbd_req_clear_port_feature (struct usb_device*,int *,int,int ) ;
 scalar_t__ usbd_req_reset_port (struct usb_device*,int *,int) ;
 scalar_t__ usbd_req_set_hub_u1_timeout (struct usb_device*,int *,int,int) ;
 scalar_t__ usbd_req_set_hub_u2_timeout (struct usb_device*,int *,int,int) ;

__attribute__((used)) static usb_error_t
uhub_reattach_port(struct uhub_softc *sc, uint8_t portno)
{
 struct usb_device *child;
 struct usb_device *udev;
 enum usb_dev_speed speed;
 enum usb_hc_mode mode;
 usb_error_t err;
 uint16_t power_mask;
 uint8_t timeout;

 DPRINTF("reattaching port %d\n", portno);

 timeout = 0;
 udev = sc->sc_udev;
 child = usb_bus_port_get_device(udev->bus,
     udev->hub->ports + portno - 1);

repeat:



 err = usbd_req_clear_port_feature(udev, ((void*)0),
     portno, UHF_C_PORT_CONNECTION);

 if (err)
  goto error;



 if (child != ((void*)0)) {



  usb_free_device(child, 0);
  child = ((void*)0);
 }


 err = uhub_read_port_status(sc, portno);
 if (err)
  goto error;
 if (!(sc->sc_st.port_status & UPS_CURRENT_CONNECT_STATUS))
  goto error;



 switch (udev->speed) {
 case 130:
 case 131:
 case 129:
  power_mask = UPS_PORT_POWER;
  break;
 case 128:
  if (udev->parent_hub == ((void*)0))
   power_mask = UPS_PORT_POWER;
  else
   power_mask = UPS_PORT_POWER_SS;
  break;
 default:
  power_mask = 0;
  break;
 }
 if (!(sc->sc_st.port_status & power_mask)) {
  DPRINTF("WARNING: strange, connected port %d "
      "has no power\n", portno);
 }



 if (!(sc->sc_st.port_status & UPS_PORT_MODE_DEVICE)) {

  DPRINTF("Port %d is in Host Mode\n", portno);

  if (sc->sc_st.port_status & UPS_SUSPEND) {





   DPRINTF("Port %d was still "
       "suspended, clearing.\n", portno);
   err = usbd_req_clear_port_feature(udev,
       ((void*)0), portno, UHF_PORT_SUSPEND);
  }





  usb_pause_mtx(((void*)0),
      USB_MS_TO_TICKS(usb_port_powerup_delay));



  err = usbd_req_reset_port(udev, ((void*)0), portno);

  if (err) {
   DPRINTFN(0, "port %d reset "
       "failed, error=%s\n",
       portno, usbd_errstr(err));
   goto error;
  }


  err = uhub_read_port_status(sc, portno);
  if (err) {
   goto error;
  }


  if ((sc->sc_st.port_change & UPS_C_CONNECT_STATUS) ||
      (!(sc->sc_st.port_status & UPS_CURRENT_CONNECT_STATUS))) {
   if (timeout) {
    DPRINTFN(0, "giving up port reset "
        "- device vanished\n");
    goto error;
   }
   timeout = 1;
   goto repeat;
  }
 } else {
  DPRINTF("Port %d is in Device Mode\n", portno);
 }




 switch (udev->speed) {
 case 130:
  if (sc->sc_st.port_status & 133)
   speed = 130;
  else if (sc->sc_st.port_status & 132)
   speed = 129;
  else
   speed = 131;
  break;
 case 131:
  if (sc->sc_st.port_status & 132)
   speed = 129;
  else
   speed = 131;
  break;
 case 129:
  speed = 129;
  break;
 case 128:
  if (udev->parent_hub == ((void*)0)) {

   switch (sc->sc_st.port_status & UPS_OTHER_SPEED) {
   case 0:
    speed = 131;
    break;
   case 132:
    speed = 129;
    break;
   case 133:
    speed = 130;
    break;
   default:
    speed = 128;
    break;
   }
  } else {
   speed = 128;
  }
  break;
 default:

  speed = udev->speed;
  break;
 }
 if (speed == 128) {
  err = usbd_req_set_hub_u1_timeout(udev, ((void*)0),
      portno, 128 - (2 * udev->depth));
  if (err) {
   DPRINTFN(0, "port %d U1 timeout "
       "failed, error=%s\n",
       portno, usbd_errstr(err));
  }
  err = usbd_req_set_hub_u2_timeout(udev, ((void*)0),
      portno, 128 - (2 * udev->depth));
  if (err) {
   DPRINTFN(0, "port %d U2 timeout "
       "failed, error=%s\n",
       portno, usbd_errstr(err));
  }
 }






 if (udev->parent_hub != ((void*)0)) {

  mode = udev->parent_hub->flags.usb_mode;
 } else if (sc->sc_st.port_status & UPS_PORT_MODE_DEVICE)
  mode = USB_MODE_DEVICE;
 else
  mode = USB_MODE_HOST;


 child = usb_alloc_device(sc->sc_dev, udev->bus, udev,
     udev->depth + 1, portno - 1, portno, speed, mode);
 if (child == ((void*)0)) {
  DPRINTFN(0, "could not allocate new device\n");
  goto error;
 }
 return (0);

error:
 if (child != ((void*)0)) {



  usb_free_device(child, 0);
  child = ((void*)0);
 }
 if (err == 0) {
  if (sc->sc_st.port_status & UPS_PORT_ENABLED) {
   err = usbd_req_clear_port_feature(
       sc->sc_udev, ((void*)0),
       portno, UHF_PORT_ENABLE);
  }
 }
 if (err) {
  DPRINTFN(0, "device problem (%s), "
      "disabling port %d\n", usbd_errstr(err), portno);
 }
 return (err);
}
