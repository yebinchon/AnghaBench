
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_proc_msg {int dummy; } ;
struct uaudio_softc {int sc_udev; int sc_rec_chan; int sc_play_chan; } ;
struct uaudio_configure_msg {struct uaudio_softc* sc; } ;


 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int uaudio_configure_msg_sub (struct uaudio_softc*,int *,int ) ;
 int usb_proc_explore_lock (int ) ;
 int usb_proc_explore_unlock (int ) ;

__attribute__((used)) static void
uaudio_configure_msg(struct usb_proc_msg *pm)
{
 struct uaudio_softc *sc = ((struct uaudio_configure_msg *)pm)->sc;

 usb_proc_explore_unlock(sc->sc_udev);
 uaudio_configure_msg_sub(sc, &sc->sc_play_chan, PCMDIR_PLAY);
 uaudio_configure_msg_sub(sc, &sc->sc_rec_chan, PCMDIR_REC);
 usb_proc_explore_lock(sc->sc_udev);
}
