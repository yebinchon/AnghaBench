
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_port_status {int wPortChange; int wPortStatus; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;


 int DPRINTF (char*) ;
 int DPRINTFN (int,char*,int ,int ) ;
 int UGETW (int ) ;
 int UHF_BH_PORT_RESET ;
 int UHF_C_BH_PORT_RESET ;
 int UPS_CURRENT_CONNECT_STATUS ;
 int UPS_C_BH_PORT_RESET ;
 int UPS_PORT_LINK_STATE_GET (int) ;




 scalar_t__ USB_ERR_TIMEOUT ;
 int USB_MS_TO_TICKS (scalar_t__) ;
 int usb_pause_mtx (struct mtx*,int ) ;
 scalar_t__ usb_port_reset_delay ;
 scalar_t__ usb_port_reset_recovery ;
 int usbd_errstr (scalar_t__) ;
 scalar_t__ usbd_req_clear_port_feature (struct usb_device*,struct mtx*,int ,int ) ;
 scalar_t__ usbd_req_get_port_status (struct usb_device*,struct mtx*,struct usb_port_status*,int ) ;
 scalar_t__ usbd_req_set_port_feature (struct usb_device*,struct mtx*,int ,int ) ;

usb_error_t
usbd_req_warm_reset_port(struct usb_device *udev, struct mtx *mtx,
    uint8_t port)
{
 struct usb_port_status ps;
 usb_error_t err;
 uint16_t n;
 uint16_t status;
 uint16_t change;

 DPRINTF("\n");

 err = usbd_req_get_port_status(udev, mtx, &ps, port);
 if (err)
  goto done;

 status = UGETW(ps.wPortStatus);

 switch (UPS_PORT_LINK_STATE_GET(status)) {
 case 128:
 case 131:
 case 130:
 case 129:
  break;
 default:
  DPRINTF("Wrong state for warm reset\n");
  return (0);
 }


 usbd_req_clear_port_feature(udev, mtx,
     port, UHF_C_BH_PORT_RESET);


 err = usbd_req_set_port_feature(udev, mtx,
     port, UHF_BH_PORT_RESET);
 if (err)
  goto done;

 n = 0;
 while (1) {

  usb_pause_mtx(mtx, USB_MS_TO_TICKS(usb_port_reset_delay));
  n += usb_port_reset_delay;
  err = usbd_req_get_port_status(udev, mtx, &ps, port);
  if (err)
   goto done;

  status = UGETW(ps.wPortStatus);
  change = UGETW(ps.wPortChange);


  if (!(status & UPS_CURRENT_CONNECT_STATUS))
   goto done;


  if (change & UPS_C_BH_PORT_RESET)
   break;


  if (n > 1000) {
   n = 0;
   break;
  }
 }


 err = usbd_req_clear_port_feature(
     udev, mtx, port, UHF_C_BH_PORT_RESET);
 if (err)
  goto done;


 if (n == 0) {
  err = USB_ERR_TIMEOUT;
  goto done;
 }

 usb_pause_mtx(mtx, USB_MS_TO_TICKS(usb_port_reset_recovery));

done:
 DPRINTFN(2, "port %d warm reset returning error=%s\n",
     port, usbd_errstr(err));
 return (err);
}
