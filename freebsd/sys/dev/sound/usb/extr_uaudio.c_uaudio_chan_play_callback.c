
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct uaudio_chan {scalar_t__ running; scalar_t__ start; scalar_t__ end; scalar_t__ num_alt; int jitter_curr; int jitter_rem; size_t cur_alt; int intr_counter; int intr_frames; int frames_per_second; int* bytes_per_frame; int sample_curr; int sample_rem; int cur; TYPE_2__* usb_alt; int * xfer; int pcm_mtx; int pcm_ch; TYPE_1__* priv_sc; } ;
typedef int int64_t ;
struct TYPE_4__ {int sample_rate; int sample_size; } ;
struct TYPE_3__ {struct uaudio_chan sc_rec_chan; } ;


 int DPRINTF (char*,...) ;
 int DPRINTFN (int,char*,...) ;
 size_t UAUDIO_NCHANBUFS ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int chn_intr (int ) ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;
 int uaudio_chan_is_async (struct uaudio_chan*,size_t) ;
 int usbd_copy_in (struct usb_page_cache*,int,int,int) ;
 int usbd_transfer_start (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_framelen (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 struct uaudio_chan* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int*,int *,int *) ;

__attribute__((used)) static void
uaudio_chan_play_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uaudio_chan *ch = usbd_xfer_softc(xfer);
 struct uaudio_chan *ch_rec;
 struct usb_page_cache *pc;
 uint32_t mfl;
 uint32_t total;
 uint32_t blockcount;
 uint32_t n;
 uint32_t offset;
 int sample_size;
 int actlen;
 int sumlen;

 if (ch->running == 0 || ch->start == ch->end) {
  DPRINTF("not running or no buffer!\n");
  return;
 }


 if (ch->priv_sc->sc_rec_chan.num_alt > 0)
  ch_rec = &ch->priv_sc->sc_rec_chan;
 else
  ch_rec = ((void*)0);

 usbd_xfer_status(xfer, &actlen, &sumlen, ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 129:
tr_setup:
  if (ch_rec != ((void*)0)) {

   mtx_lock(ch_rec->pcm_mtx);
   ch_rec->jitter_curr = 0;
   ch_rec->jitter_rem = 0;
   mtx_unlock(ch_rec->pcm_mtx);
  }


  ch->jitter_curr = 0;
  ch->jitter_rem = 0;


 case 128:
  if (actlen < sumlen) {
   DPRINTF("short transfer, "
       "%d of %d bytes\n", actlen, sumlen);
  }
  chn_intr(ch->pcm_ch);





  if (ch_rec != ((void*)0) &&
      uaudio_chan_is_async(ch, ch->cur_alt) != 0) {
   mtx_lock(ch_rec->pcm_mtx);
   if (ch_rec->cur_alt < ch_rec->num_alt) {
    int64_t tx_jitter;
    int64_t rx_rate;


    tx_jitter = ch->usb_alt[ch->cur_alt].sample_rate;
    tx_jitter = (tx_jitter * ch_rec->jitter_curr) +
        ch->jitter_rem;


    ch_rec->jitter_curr = 0;
    ch_rec->jitter_rem = 0;


    rx_rate = ch_rec->usb_alt[ch_rec->cur_alt].sample_rate;
    ch->jitter_curr += tx_jitter / rx_rate;
    ch->jitter_rem = tx_jitter % rx_rate;
   }
   mtx_unlock(ch_rec->pcm_mtx);
  }


  ch->intr_counter += ch->intr_frames;
  if (ch->intr_counter >= ch->frames_per_second) {
   ch->intr_counter -= ch->frames_per_second;
   usbd_transfer_start(ch->xfer[UAUDIO_NCHANBUFS]);
  }

  mfl = usbd_xfer_max_framelen(xfer);

  if (ch->bytes_per_frame[1] > mfl) {
   DPRINTF("bytes per transfer, %d, "
       "exceeds maximum, %d!\n",
       ch->bytes_per_frame[1],
       mfl);
   break;
  }

  blockcount = ch->intr_frames;


  usbd_xfer_set_frames(xfer, blockcount);


  sample_size = ch->usb_alt[ch->cur_alt].sample_size;


  total = 0;


  for (n = 0; n != blockcount; n++) {
   uint32_t frame_len;

   ch->sample_curr += ch->sample_rem;
   if (ch->sample_curr >= ch->frames_per_second) {
    ch->sample_curr -= ch->frames_per_second;
    frame_len = ch->bytes_per_frame[1];
   } else {
    frame_len = ch->bytes_per_frame[0];
   }


   if (ch->jitter_curr > 0 &&
       (frame_len + sample_size) <= mfl) {
    DPRINTFN(6, "sending one sample more\n");
    ch->jitter_curr--;
    frame_len += sample_size;
   } else if (ch->jitter_curr < 0 &&
       frame_len >= sample_size) {
    DPRINTFN(6, "sending one sample less\n");
    ch->jitter_curr++;
    frame_len -= sample_size;
   }
   usbd_xfer_set_frame_len(xfer, n, frame_len);
   total += frame_len;
  }

  DPRINTFN(6, "transferring %d bytes\n", total);

  offset = 0;

  pc = usbd_xfer_get_frame(xfer, 0);
  while (total > 0) {

   n = (ch->end - ch->cur);
   if (n > total)
    n = total;

   usbd_copy_in(pc, offset, ch->cur, n);

   total -= n;
   ch->cur += n;
   offset += n;

   if (ch->cur >= ch->end)
    ch->cur = ch->start;
  }
  usbd_transfer_submit(xfer);
  break;

 default:
  if (error != USB_ERR_CANCELLED)
   goto tr_setup;
  break;
 }
}
