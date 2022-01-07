
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef union ccb {int dummy; } ccb ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int* wLength; int * wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct TYPE_2__ {int cmd_len; int data_len; int (* callback ) (struct umass_softc*,union ccb*,int ,int ) ;union ccb* ccb; struct usb_device_request* cmd_data; int dir; } ;
struct umass_softc {int sc_last_xfer_index; TYPE_1__ sc_transfer; int sc_iface_no; } ;
typedef int req ;


 int DIF (int ,int ) ;
 int DIR_IN ;
 int DIR_NONE ;
 int STATUS_CMD_UNKNOWN ;
 int UDMASS_CBI ;
 int UMASS_T_CBI_COMMAND ;
 int UMASS_T_CBI_DATA_READ ;
 int UMASS_T_CBI_DATA_WRITE ;
 int UR_CBI_ADSC ;
 int USB_ERR_STALLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int stub1 (struct umass_softc*,union ccb*,int ,int ) ;
 int umass_cam_cb (struct umass_softc*,union ccb*,int ,int ) ;
 int umass_cbi_dump_cmd (struct umass_softc*,struct usb_device_request*,int) ;
 int umass_cbi_start_status (struct umass_softc*) ;
 int umass_tr_error (struct usb_xfer*,int ) ;
 int umass_transfer_start (struct umass_softc*,int ) ;
 int usbd_copy_in (struct usb_page_cache*,int ,struct usb_device_request*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 struct umass_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
umass_t_cbi_command_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct umass_softc *sc = usbd_xfer_softc(xfer);
 union ccb *ccb = sc->sc_transfer.ccb;
 struct usb_device_request req;
 struct usb_page_cache *pc;

 switch (USB_GET_STATE(xfer)) {
 case 128:

  if (sc->sc_transfer.dir == DIR_NONE) {
   umass_cbi_start_status(sc);
  } else {
   umass_transfer_start
       (sc, (sc->sc_transfer.dir == DIR_IN) ?
       UMASS_T_CBI_DATA_READ : UMASS_T_CBI_DATA_WRITE);
  }
  break;

 case 129:

  if (ccb) {
   req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
   req.bRequest = UR_CBI_ADSC;
   USETW(req.wValue, 0);
   req.wIndex[0] = sc->sc_iface_no;
   req.wIndex[1] = 0;
   req.wLength[0] = sc->sc_transfer.cmd_len;
   req.wLength[1] = 0;

   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_in(pc, 0, &req, sizeof(req));
   pc = usbd_xfer_get_frame(xfer, 1);
   usbd_copy_in(pc, 0, sc->sc_transfer.cmd_data,
       sc->sc_transfer.cmd_len);

   usbd_xfer_set_frame_len(xfer, 0, sizeof(req));
   usbd_xfer_set_frame_len(xfer, 1, sc->sc_transfer.cmd_len);
   usbd_xfer_set_frames(xfer,
       sc->sc_transfer.cmd_len ? 2 : 1);

   DIF(UDMASS_CBI,
       umass_cbi_dump_cmd(sc,
       sc->sc_transfer.cmd_data,
       sc->sc_transfer.cmd_len));

   usbd_transfer_submit(xfer);
  }
  break;

 default:






  if ((error == USB_ERR_STALLED) ||
      (sc->sc_transfer.callback == &umass_cam_cb)) {
   sc->sc_transfer.ccb = ((void*)0);
   (sc->sc_transfer.callback)
       (sc, ccb, sc->sc_transfer.data_len,
       STATUS_CMD_UNKNOWN);
  } else {
   umass_tr_error(xfer, error);

   sc->sc_last_xfer_index = UMASS_T_CBI_COMMAND;
  }
  break;
 }
}
