
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct usb_xfer {size_t nframes; size_t aframes; int * frlengths; } ;


 size_t USBPF_FRAME_ALIGN (int ) ;
 size_t USBPF_FRAME_HDR_LEN ;
 size_t USBPF_HDR_LEN ;
 int USBPF_XFERTAP_SUBMIT ;
 scalar_t__ usbpf_xfer_frame_is_read (struct usb_xfer*,size_t) ;

__attribute__((used)) static uint32_t
usbpf_xfer_precompute_size(struct usb_xfer *xfer, int type)
{
 uint32_t totlen;
 uint32_t x;
 uint32_t nframes;

 if (type == USBPF_XFERTAP_SUBMIT)
  nframes = xfer->nframes;
 else
  nframes = xfer->aframes;

 totlen = USBPF_HDR_LEN + (USBPF_FRAME_HDR_LEN * nframes);


 for (x = 0; x != nframes; x++) {
  if (usbpf_xfer_frame_is_read(xfer, x)) {
   if (type != USBPF_XFERTAP_SUBMIT) {
    totlen += USBPF_FRAME_ALIGN(
        xfer->frlengths[x]);
   }
  } else {
   if (type == USBPF_XFERTAP_SUBMIT) {
    totlen += USBPF_FRAME_ALIGN(
        xfer->frlengths[x]);
   }
  }
 }
 return (totlen);
}
