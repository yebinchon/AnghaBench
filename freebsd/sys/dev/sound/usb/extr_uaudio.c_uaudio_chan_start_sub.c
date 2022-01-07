
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uaudio_softc {int * sc_config_msg; int sc_udev; } ;
struct uaudio_chan {scalar_t__ operation; scalar_t__ cur_alt; scalar_t__ set_alt; int * xfer; int pcm_mtx; struct uaudio_softc* priv_sc; } ;


 scalar_t__ CHAN_OP_DRAIN ;
 scalar_t__ CHAN_OP_NONE ;
 scalar_t__ CHAN_OP_START ;
 scalar_t__ mtx_owned (int ) ;
 int usb_proc_explore_msignal (int ,int *,int *) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
uaudio_chan_start_sub(struct uaudio_chan *ch)
{
 struct uaudio_softc *sc = ch->priv_sc;
 int do_start = 0;

 if (ch->operation != CHAN_OP_DRAIN) {
  if (ch->cur_alt == ch->set_alt &&
      ch->operation == CHAN_OP_NONE &&
      mtx_owned(ch->pcm_mtx) != 0) {

   do_start = 1;
  } else {
   ch->operation = CHAN_OP_START;
   (void)usb_proc_explore_msignal(sc->sc_udev,
       &sc->sc_config_msg[0], &sc->sc_config_msg[1]);
  }
 }
 if (do_start) {
  usbd_transfer_start(ch->xfer[0]);
  usbd_transfer_start(ch->xfer[1]);
 }
}
