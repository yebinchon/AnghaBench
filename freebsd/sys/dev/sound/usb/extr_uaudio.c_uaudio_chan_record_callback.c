
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct uaudio_chan {scalar_t__ start; scalar_t__ end; int sample_curr; int sample_rem; int intr_frames; int* bytes_per_frame; int frames_per_second; size_t cur_alt; size_t set_alt; int cur; int jitter_curr; int pcm_ch; int running; TYPE_1__* usb_alt; } ;
struct TYPE_2__ {int sample_size; } ;


 int DPRINTF (char*) ;
 int DPRINTFN (int,char*,int,int) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int chn_intr (int ) ;
 int usbd_copy_out (struct usb_page_cache*,int,int,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_frame_len (struct usb_xfer*,int) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_framelen (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 struct uaudio_chan* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int*) ;

__attribute__((used)) static void
uaudio_chan_record_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uaudio_chan *ch = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint32_t offset0;
 uint32_t mfl;
 int m;
 int n;
 int len;
 int actlen;
 int nframes;
 int expected_bytes;
 int sample_size;

 if (ch->start == ch->end) {
  DPRINTF("no buffer!\n");
  return;
 }

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), &nframes);
 mfl = usbd_xfer_max_framelen(xfer);

 switch (USB_GET_STATE(xfer)) {
 case 128:

  offset0 = 0;
  pc = usbd_xfer_get_frame(xfer, 0);


  ch->sample_curr += (ch->sample_rem * ch->intr_frames);


  expected_bytes = (ch->intr_frames * ch->bytes_per_frame[0]) +
      ((ch->sample_curr / ch->frames_per_second) *
      (ch->bytes_per_frame[1] - ch->bytes_per_frame[0]));


  ch->sample_curr %= ch->frames_per_second;


  sample_size = ch->usb_alt[ch->cur_alt].sample_size;

  for (n = 0; n != nframes; n++) {
   uint32_t offset1 = offset0;

   len = usbd_xfer_frame_len(xfer, n);


   len = len - (len % sample_size);


   expected_bytes -= len;


   if (ch->running == 0 || ch->cur_alt != ch->set_alt)
    continue;


   while (len > 0) {

    m = (ch->end - ch->cur);

    if (m > len)
     m = len;

    usbd_copy_out(pc, offset1, ch->cur, m);

    len -= m;
    offset1 += m;
    ch->cur += m;

    if (ch->cur >= ch->end)
     ch->cur = ch->start;
   }

   offset0 += mfl;
  }


  ch->jitter_curr -= (expected_bytes / sample_size);


  nframes = 2 * ch->intr_frames;


  if (ch->jitter_curr < -nframes)
   ch->jitter_curr = -nframes;
  else if (ch->jitter_curr > nframes)
   ch->jitter_curr = nframes;

  DPRINTFN(6, "transferred %d bytes, jitter %d samples\n",
      actlen, ch->jitter_curr);

  if (ch->running != 0)
   chn_intr(ch->pcm_ch);

 case 129:
tr_setup:
  nframes = ch->intr_frames;

  usbd_xfer_set_frames(xfer, nframes);
  for (n = 0; n != nframes; n++)
   usbd_xfer_set_frame_len(xfer, n, mfl);

  usbd_transfer_submit(xfer);
  break;

 default:
  if (error != USB_ERR_CANCELLED)
   goto tr_setup;
  break;
 }
}
