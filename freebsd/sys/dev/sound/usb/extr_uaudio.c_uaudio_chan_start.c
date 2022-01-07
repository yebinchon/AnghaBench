
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uaudio_chan {int running; scalar_t__ buf; scalar_t__ cur; scalar_t__ end; scalar_t__ start; int set_alt; struct uaudio_softc* priv_sc; } ;
struct uaudio_softc {int sc_udev; struct uaudio_chan sc_play_chan; struct uaudio_chan sc_rec_chan; } ;


 scalar_t__ uaudio_chan_need_both (struct uaudio_softc*) ;
 int uaudio_chan_start_sub (struct uaudio_chan*) ;
 int uaudio_get_buffer_size (struct uaudio_chan*,int ) ;
 int usb_proc_explore_lock (int ) ;
 int usb_proc_explore_unlock (int ) ;

void
uaudio_chan_start(struct uaudio_chan *ch)
{
 struct uaudio_softc *sc = ch->priv_sc;


 usb_proc_explore_lock(sc->sc_udev);


 if (ch->running == 0) {
    uint32_t temp;


  temp = 2 * uaudio_get_buffer_size(ch, ch->set_alt);


  ch->running = 1;


  ch->start = ch->buf;
  ch->end = ch->buf + temp;
  ch->cur = ch->buf;

  if (uaudio_chan_need_both(sc)) {




   uaudio_chan_start_sub(&sc->sc_rec_chan);
   uaudio_chan_start_sub(&sc->sc_play_chan);
  } else {
   uaudio_chan_start_sub(ch);
  }
 }


 usb_proc_explore_unlock(sc->sc_udev);
}
