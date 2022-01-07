
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * xfer; } ;
struct uaudio_softc {int * sc_mixer_lock; TYPE_1__ sc_hid; int * sc_mixer_xfer; struct uaudio_mixer_node* sc_mixer_root; } ;
struct uaudio_mixer_node {scalar_t__ ctl; int nchan; int* update; struct uaudio_mixer_node* next; } ;


 scalar_t__ SOUND_MIXER_NRDEVICES ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
uaudio_mixer_reload_all(struct uaudio_softc *sc)
{
 struct uaudio_mixer_node *pmc;
 int chan;

 if (sc->sc_mixer_lock == ((void*)0))
  return;

 mtx_lock(sc->sc_mixer_lock);
 for (pmc = sc->sc_mixer_root; pmc != ((void*)0); pmc = pmc->next) {

  if (pmc->ctl == SOUND_MIXER_NRDEVICES)
   continue;
  for (chan = 0; chan < pmc->nchan; chan++)
   pmc->update[chan / 8] |= (1 << (chan % 8));
 }
 usbd_transfer_start(sc->sc_mixer_xfer[0]);


 usbd_transfer_start(sc->sc_hid.xfer[0]);
 mtx_unlock(sc->sc_mixer_lock);
}
