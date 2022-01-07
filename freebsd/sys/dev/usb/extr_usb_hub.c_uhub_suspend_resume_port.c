
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
struct TYPE_6__ {scalar_t__ usb_mode; } ;
struct usb_device {TYPE_3__ flags; TYPE_1__* hub; int bus; } ;
struct TYPE_5__ {int port_status; } ;
struct uhub_softc {TYPE_2__ sc_st; struct usb_device* sc_udev; } ;
struct TYPE_4__ {int ports; } ;


 int DPRINTF (char*,...) ;
 int UHF_C_PORT_LINK_STATE ;
 int UHF_C_PORT_SUSPEND ;
 int UPS_PORT_LINK_STATE_GET (int) ;


 int UPS_SUSPEND ;
 scalar_t__ USB_MODE_DEVICE ;
 scalar_t__ uhub_read_port_status (struct uhub_softc*,int) ;
 struct usb_device* usb_bus_port_get_device (int ,int) ;
 int usb_dev_resume_peer (struct usb_device*) ;
 int usb_dev_suspend_peer (struct usb_device*) ;
 scalar_t__ usb_device_20_compatible (struct usb_device*) ;
 scalar_t__ usbd_req_clear_port_feature (struct usb_device*,int *,int,int ) ;
 int usbd_req_warm_reset_port (struct usb_device*,int *,int) ;

__attribute__((used)) static usb_error_t
uhub_suspend_resume_port(struct uhub_softc *sc, uint8_t portno)
{
 struct usb_device *child;
 struct usb_device *udev;
 uint8_t is_suspend;
 usb_error_t err;

 DPRINTF("port %d\n", portno);

 udev = sc->sc_udev;
 child = usb_bus_port_get_device(udev->bus,
     udev->hub->ports + portno - 1);



 if (usb_device_20_compatible(udev)) {
  err = usbd_req_clear_port_feature(udev, ((void*)0),
      portno, UHF_C_PORT_SUSPEND);
 } else {
  err = usbd_req_clear_port_feature(udev, ((void*)0),
      portno, UHF_C_PORT_LINK_STATE);
 }

 if (err) {
  DPRINTF("clearing suspend failed.\n");
  goto done;
 }


 err = uhub_read_port_status(sc, portno);
 if (err) {
  DPRINTF("reading port status failed.\n");
  goto done;
 }


 if (usb_device_20_compatible(udev)) {
  if (sc->sc_st.port_status & UPS_SUSPEND) {
   is_suspend = 1;
  } else {
   is_suspend = 0;
  }
 } else {
  switch (UPS_PORT_LINK_STATE_GET(sc->sc_st.port_status)) {
  case 128:
   is_suspend = 1;
   break;
  case 129:
   usbd_req_warm_reset_port(udev, ((void*)0), portno);
   is_suspend = 0;
   break;
  default:
   is_suspend = 0;
   break;
  }
 }

 DPRINTF("suspended=%u\n", is_suspend);



 if (child) {





  if (is_suspend == 0)
   usb_dev_resume_peer(child);
  else if (child->flags.usb_mode == USB_MODE_DEVICE)
   usb_dev_suspend_peer(child);
 }
done:
 return (err);
}
