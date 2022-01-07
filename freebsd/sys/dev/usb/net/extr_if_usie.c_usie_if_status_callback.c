
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint32_t ;
struct usie_softc {int sc_if_status_task; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_cdc_notification {int bNotification; } ;
typedef int cdc ;


 int DPRINTF (char*,int) ;
 int DPRINTFN (int,char*,int) ;
 int UCDC_N_RESPONSE_AVAILABLE ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;
 int usbd_copy_out (struct usb_page_cache*,int ,struct usb_cdc_notification*,int) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct usie_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
usie_if_status_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct usie_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 struct usb_cdc_notification cdc;
 uint32_t actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  DPRINTFN(4, "info received, actlen=%d\n", actlen);


  if (actlen < (sizeof(cdc) - 16)) {
   DPRINTF("data too short %d\n", actlen);
   goto tr_setup;
  }
  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, &cdc, (sizeof(cdc) - 16));

  DPRINTFN(4, "bNotification=%x\n", cdc.bNotification);

  if (cdc.bNotification & UCDC_N_RESPONSE_AVAILABLE) {
   taskqueue_enqueue(taskqueue_thread,
       &sc->sc_if_status_task);
  }

 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  break;

 default:
  DPRINTF("USB transfer error, %s\n",
      usbd_errstr(error));

  if (error != USB_ERR_CANCELLED) {
   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}
