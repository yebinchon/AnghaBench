
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uaudio_softc {scalar_t__ sc_mixer_init; scalar_t__ sc_pcm_registered; int (* sc_set_spdif_fn ) (struct uaudio_softc*,int ) ;} ;
typedef int device_t ;


 int device_get_parent (int ) ;
 struct uaudio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mixer_uninit (int ) ;
 int pcm_unregister (int ) ;
 int stub1 (struct uaudio_softc*,int ) ;
 int usb_pause_mtx (int *,int) ;

int
uaudio_detach_sub(device_t dev)
{
 struct uaudio_softc *sc = device_get_softc(device_get_parent(dev));
 int error = 0;


 (void) sc->sc_set_spdif_fn(sc, 0);

repeat:
 if (sc->sc_pcm_registered) {
  error = pcm_unregister(dev);
 } else {
  if (sc->sc_mixer_init) {
   error = mixer_uninit(dev);
  }
 }

 if (error) {
  device_printf(dev, "Waiting for sound application to exit!\n");
  usb_pause_mtx(((void*)0), 2 * hz);
  goto repeat;
 }
 return (0);
}
