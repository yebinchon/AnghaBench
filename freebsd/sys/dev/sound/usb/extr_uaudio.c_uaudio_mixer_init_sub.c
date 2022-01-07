
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uaudio_softc {int sc_mix_info; int sc_recsrc_info; int sc_mixer_lock; int sc_mixer_xfer; int sc_mixer_iface_index; int sc_udev; struct snd_mixer* sc_mixer_dev; } ;
struct snd_mixer {int dummy; } ;


 int DPRINTF (char*) ;
 int DPRINTFN (int ,char*) ;
 int ENOMEM ;
 int SOUND_MASK_PCM ;
 int SOUND_MASK_VOLUME ;
 int SOUND_MIXER_NONE ;
 int SOUND_MIXER_VOLUME ;
 int mix_setdevs (struct snd_mixer*,int) ;
 int mix_setparentchild (struct snd_mixer*,int ,int ) ;
 int mix_setrealdev (struct snd_mixer*,int ,int ) ;
 int mix_setrecdevs (struct snd_mixer*,int ) ;
 int mixer_get_lock (struct snd_mixer*) ;
 int uaudio_mixer_config ;
 scalar_t__ usbd_transfer_setup (int ,int *,int ,int ,int,struct uaudio_softc*,int ) ;

int
uaudio_mixer_init_sub(struct uaudio_softc *sc, struct snd_mixer *m)
{
 DPRINTF("\n");

 sc->sc_mixer_lock = mixer_get_lock(m);
 sc->sc_mixer_dev = m;

 if (usbd_transfer_setup(sc->sc_udev, &sc->sc_mixer_iface_index,
     sc->sc_mixer_xfer, uaudio_mixer_config, 1, sc,
     sc->sc_mixer_lock)) {
  DPRINTFN(0, "could not allocate USB "
      "transfer for audio mixer!\n");
  return (ENOMEM);
 }
 if (!(sc->sc_mix_info & SOUND_MASK_VOLUME)) {
  mix_setparentchild(m, SOUND_MIXER_VOLUME, SOUND_MASK_PCM);
  mix_setrealdev(m, SOUND_MIXER_VOLUME, SOUND_MIXER_NONE);
 }
 mix_setdevs(m, sc->sc_mix_info);
 mix_setrecdevs(m, sc->sc_recsrc_info);
 return (0);
}
