
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uaudio_chan {scalar_t__ running; struct uaudio_softc* priv_sc; } ;
struct uaudio_softc {int sc_udev; struct uaudio_chan sc_play_chan; struct uaudio_chan sc_rec_chan; } ;


 scalar_t__ uaudio_chan_need_both (struct uaudio_softc*) ;
 scalar_t__ uaudio_chan_need_none (struct uaudio_softc*) ;
 int uaudio_chan_stop_sub (struct uaudio_chan*) ;
 int usb_proc_explore_lock (int ) ;
 int usb_proc_explore_unlock (int ) ;

void
uaudio_chan_stop(struct uaudio_chan *ch)
{
 struct uaudio_softc *sc = ch->priv_sc;


 usb_proc_explore_lock(sc->sc_udev);


 if (ch->running != 0) {

  ch->running = 0;

  if (uaudio_chan_need_both(sc)) {




  } else if (uaudio_chan_need_none(sc)) {




   uaudio_chan_stop_sub(&sc->sc_rec_chan);
   uaudio_chan_stop_sub(&sc->sc_play_chan);
  } else {
   uaudio_chan_stop_sub(ch);
  }
 }


 usb_proc_explore_unlock(sc->sc_udev);
}
