
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_frlength_t ;
struct TYPE_4__ {int control_act; int control_stall; int control_hdr; scalar_t__ usb_mode; int control_rem; int control_did_data; } ;
struct TYPE_3__ {scalar_t__ manual_status; scalar_t__ force_short_xfer; scalar_t__ stall_pipe; } ;
struct usb_xfer {int nframes; int sumlen; int* frlengths; int max_data_length; TYPE_2__ flags_int; TYPE_1__ flags; } ;
struct usb_device_request {int dummy; } ;


 int DPRINTF (char*) ;
 int DPRINTFN (int ,char*,...) ;
 scalar_t__ USB_MODE_DEVICE ;
 int usbd_control_transfer_did_data (struct usb_xfer*) ;
 int usbd_control_transfer_init (struct usb_xfer*) ;

__attribute__((used)) static int
usbd_setup_ctrl_transfer(struct usb_xfer *xfer)
{
 usb_frlength_t len;


 if (xfer->flags.stall_pipe && xfer->flags_int.control_act) {

  xfer->flags_int.control_stall = 1;
  xfer->flags_int.control_act = 0;
 } else {

  xfer->flags_int.control_stall = 0;
 }


 if (xfer->nframes > 2) {






  DPRINTFN(0, "Too many frames: %u\n",
      (unsigned int)xfer->nframes);
  goto error;
 }





 if (xfer->flags_int.control_act) {

  if (xfer->flags_int.control_hdr) {



   xfer->flags_int.control_hdr = 0;


   if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {
    usbd_control_transfer_init(xfer);
   }
  }


  len = xfer->sumlen;

 } else {



  if (xfer->frlengths[0] != sizeof(struct usb_device_request)) {
   DPRINTFN(0, "Wrong framelength %u != %zu\n",
       xfer->frlengths[0], sizeof(struct
       usb_device_request));
   goto error;
  }

  if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {


   if (xfer->nframes != 1) {





    DPRINTF("Misconfigured transfer\n");
    goto error;
   }





   xfer->flags_int.control_rem = 0xFFFF;
  } else {



   usbd_control_transfer_init(xfer);
  }



  xfer->flags_int.control_hdr = 1;



  len = (xfer->sumlen - sizeof(struct usb_device_request));
 }



 xfer->flags_int.control_did_data =
     usbd_control_transfer_did_data(xfer);



 if (len > xfer->flags_int.control_rem) {
  DPRINTFN(0, "Length (%d) greater than "
      "remaining length (%d)\n", len,
      xfer->flags_int.control_rem);
  goto error;
 }


 if (xfer->flags.force_short_xfer) {
  xfer->flags_int.control_rem = 0;
 } else {
  if ((len != xfer->max_data_length) &&
      (len != xfer->flags_int.control_rem) &&
      (xfer->nframes != 1)) {
   DPRINTFN(0, "Short control transfer without "
       "force_short_xfer set\n");
   goto error;
  }
  xfer->flags_int.control_rem -= len;
 }



 if ((xfer->flags_int.control_rem > 0) ||
     (xfer->flags.manual_status)) {

  xfer->flags_int.control_act = 1;


  if ((!xfer->flags_int.control_hdr) &&
      (xfer->nframes == 1)) {



   DPRINTFN(0, "Invalid parameter "
       "combination\n");
   goto error;
  }
 } else {

  xfer->flags_int.control_act = 0;
 }
 return (0);

error:
 return (1);
}
