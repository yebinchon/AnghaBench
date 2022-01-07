
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int xfer; void* operation; } ;
struct TYPE_3__ {int xfer; void* operation; } ;
struct uaudio_softc {scalar_t__ sc_sndstat_valid; int sc_sndstat; TYPE_2__ sc_rec_chan; TYPE_1__ sc_play_chan; int sc_udev; int * sc_config_msg; } ;
typedef int device_t ;


 void* CHAN_OP_DRAIN ;
 int DPRINTF (char*) ;
 scalar_t__ UAUDIO_NCHANBUFS ;
 scalar_t__ bus_generic_detach (int ) ;
 struct uaudio_softc* device_get_softc (int ) ;
 int sbuf_delete (int *) ;
 int uaudio_hid_detach (struct uaudio_softc*) ;
 int uaudio_mixer_ctl_free (struct uaudio_softc*) ;
 int umidi_detach (int ) ;
 int usb_proc_explore_lock (int ) ;
 int usb_proc_explore_mwait (int ,int *,int *) ;
 int usb_proc_explore_unlock (int ) ;
 int usbd_transfer_unsetup (int ,scalar_t__) ;

__attribute__((used)) static int
uaudio_detach(device_t dev)
{
 struct uaudio_softc *sc = device_get_softc(dev);






 usb_proc_explore_lock(sc->sc_udev);
 sc->sc_play_chan.operation = CHAN_OP_DRAIN;
 sc->sc_rec_chan.operation = CHAN_OP_DRAIN;
 usb_proc_explore_mwait(sc->sc_udev,
     &sc->sc_config_msg[0], &sc->sc_config_msg[1]);
 usb_proc_explore_unlock(sc->sc_udev);

 usbd_transfer_unsetup(sc->sc_play_chan.xfer, UAUDIO_NCHANBUFS + 1);
 usbd_transfer_unsetup(sc->sc_rec_chan.xfer, UAUDIO_NCHANBUFS + 1);

 uaudio_hid_detach(sc);

 if (bus_generic_detach(dev) != 0) {
  DPRINTF("detach failed!\n");
 }
 sbuf_delete(&sc->sc_sndstat);
 sc->sc_sndstat_valid = 0;

 umidi_detach(dev);



 uaudio_mixer_ctl_free(sc);

 return (0);
}
