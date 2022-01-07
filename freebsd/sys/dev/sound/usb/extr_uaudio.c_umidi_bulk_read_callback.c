
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_2__ {int * fp; } ;
struct umidi_sub_chan {TYPE_1__ fifo; int read_open; } ;
struct umidi_chan {int max_emb_jack; struct umidi_sub_chan* sub; } ;


 int DPRINTF (char*,...) ;
 int USB_ERR_CANCELLED ;
 size_t USB_FIFO_RX ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int* umidi_cmd_to_len ;
 int usb_fifo_put_data_linear (int ,int*,int,int) ;
 int usbd_copy_out (struct usb_page_cache*,int,int*,int) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct umidi_chan* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
umidi_bulk_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct umidi_chan *chan = usbd_xfer_softc(xfer);
 struct umidi_sub_chan *sub;
 struct usb_page_cache *pc;
 uint8_t buf[4];
 uint8_t cmd_len;
 uint8_t cn;
 uint16_t pos;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:

  DPRINTF("actlen=%d bytes\n", actlen);

  pos = 0;
  pc = usbd_xfer_get_frame(xfer, 0);

  while (actlen >= 4) {


   usbd_copy_out(pc, pos, buf, 4);

   cmd_len = umidi_cmd_to_len[buf[0] & 0xF];

   cn = buf[0] >> 4;




   sub = &chan->sub[cn];

   if ((cmd_len != 0) && (cn < chan->max_emb_jack) &&
       (sub->read_open != 0)) {


    usb_fifo_put_data_linear(
        sub->fifo.fp[USB_FIFO_RX],
        buf + 1, cmd_len, 1);
   }
   actlen -= 4;
   pos += 4;
  }

 case 129:
  DPRINTF("start\n");
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  break;

 default:
  DPRINTF("error=%s\n", usbd_errstr(error));

  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}
