
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ubt_hci_event {int dummy; } ;


 int UBT_HCI_EVENT_SIZE (struct ubt_hci_event*) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int printf (char*,char*) ;
 int usbd_copy_out (struct usb_page_cache*,int ,struct ubt_hci_event*,int) ;
 char* usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ubt_hci_event* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;
 int wakeup (struct ubt_hci_event*) ;

__attribute__((used)) static void
ubt_probe_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ubt_hci_event *evt = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  if (actlen > UBT_HCI_EVENT_SIZE(evt))
   actlen = UBT_HCI_EVENT_SIZE(evt);
  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, evt, actlen);

  wakeup(evt);
  break;

        case 129:
submit_next:

  usbd_xfer_set_stall(xfer);
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  break;

 default:
  if (error != USB_ERR_CANCELLED) {
   printf("ng_ubt: interrupt transfer failed: %s\n",
    usbd_errstr(error));
   goto submit_next;
  }
  break;
 }
}
