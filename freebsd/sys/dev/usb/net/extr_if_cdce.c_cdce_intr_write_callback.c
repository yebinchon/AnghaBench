
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_cdc_notification {int data; int wLength; int wValue; int * wIndex; int bNotification; void* bmRequestType; } ;
struct TYPE_2__ {int ue_udev; } ;
struct cdce_softc {int sc_notify_state; TYPE_1__ sc_ue; int * sc_ifaces_index; } ;
typedef int req ;


 int CDCE_NOTIFY_DONE ;


 int DPRINTF (char*,int) ;
 void* UCDC_NOTIFICATION ;
 int UCDC_N_CONNECTION_SPEED_CHANGE ;
 int UCDC_N_NETWORK_CONNECTION ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;
 int USB_MODE_HOST ;
 int USB_SPEED_FULL ;


 int USETDW (int ,int) ;
 int USETW (int ,int) ;
 int usbd_copy_in (struct usb_page_cache*,int ,struct usb_cdc_notification*,int) ;
 int usbd_get_mode (int ) ;
 int usbd_get_speed (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct cdce_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
cdce_intr_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct cdce_softc *sc = usbd_xfer_softc(xfer);
 struct usb_cdc_notification req;
 struct usb_page_cache *pc;
 uint32_t speed;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:

  DPRINTF("Transferred %d bytes\n", actlen);

  switch (sc->sc_notify_state) {
  case 131:
   sc->sc_notify_state = 130;
   break;
  case 130:
   sc->sc_notify_state = CDCE_NOTIFY_DONE;
   break;
  default:
   break;
  }


 case 129:
tr_setup:





  if (sc->sc_notify_state == 131) {
   req.bmRequestType = UCDC_NOTIFICATION;
   req.bNotification = UCDC_N_NETWORK_CONNECTION;
   req.wIndex[0] = sc->sc_ifaces_index[1];
   req.wIndex[1] = 0;
   USETW(req.wValue, 1);
   USETW(req.wLength, 0);

   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_in(pc, 0, &req, sizeof(req));
   usbd_xfer_set_frame_len(xfer, 0, sizeof(req));
   usbd_xfer_set_frames(xfer, 1);
   usbd_transfer_submit(xfer);

  } else if (sc->sc_notify_state == 130) {
   req.bmRequestType = UCDC_NOTIFICATION;
   req.bNotification = UCDC_N_CONNECTION_SPEED_CHANGE;
   req.wIndex[0] = sc->sc_ifaces_index[1];
   req.wIndex[1] = 0;
   USETW(req.wValue, 0);
   USETW(req.wLength, 8);


   if (usbd_get_speed(sc->sc_ue.ue_udev) != USB_SPEED_FULL)
    speed = (13 * 512 * 8 * 1000 * 8);
   else
    speed = (19 * 64 * 1 * 1000 * 8);

   USETDW(req.data + 0, speed);
   USETDW(req.data + 4, speed);

   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_in(pc, 0, &req, sizeof(req));
   usbd_xfer_set_frame_len(xfer, 0, sizeof(req));
   usbd_xfer_set_frames(xfer, 1);
   usbd_transfer_submit(xfer);
  }
  break;

 default:
  if (error != USB_ERR_CANCELLED) {
   if (usbd_get_mode(sc->sc_ue.ue_udev) == USB_MODE_HOST) {

    usbd_xfer_set_stall(xfer);
   }
   goto tr_setup;
  }
  break;
 }
}
