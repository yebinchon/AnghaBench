
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_alt; int feedback_rate; } ;
struct TYPE_3__ {scalar_t__ num_alt; } ;
struct uaudio_softc {int sc_mix_info; int sc_mixer_init; int sc_pcm_registered; TYPE_2__ sc_play_chan; TYPE_1__ sc_rec_chan; scalar_t__ sc_pcm_bitperfect; scalar_t__ sc_uq_audio_swap_lr; } ;
typedef int status ;
typedef int kobj_class_t ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int DPRINTF (char*) ;
 int ENXIO ;
 int OID_AUTO ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 char* PCM_KLDSTRING (int ) ;
 int SD_F_BITPERFECT ;
 int SD_F_MPSAFE ;
 int SD_F_SOFTPCMVOL ;
 int SND_STATUSLEN ;
 int SOUND_MASK_PCM ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_parent (int ) ;
 struct uaudio_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int mixer_hwvol_init (int ) ;
 scalar_t__ mixer_init (int ,int ,struct uaudio_softc*) ;
 int pcm_addchan (int ,int ,int ,struct uaudio_softc*) ;
 scalar_t__ pcm_register (int ,struct uaudio_softc*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 int snd_uaudio ;
 int snprintf (char*,int,char*,char*) ;
 int uaudio_detach_sub (int ) ;
 int uaudio_mixer_init (struct uaudio_softc*) ;
 int uaudio_mixer_register_sysctl (struct uaudio_softc*,int ) ;
 int uaudio_pcm_setflags (int ,int ) ;

int
uaudio_attach_sub(device_t dev, kobj_class_t mixer_class, kobj_class_t chan_class)
{
 struct uaudio_softc *sc = device_get_softc(device_get_parent(dev));
 char status[SND_STATUSLEN];

 uaudio_mixer_init(sc);

 if (sc->sc_uq_audio_swap_lr) {
  DPRINTF("hardware has swapped left and right\n");

 }
 if (!(sc->sc_mix_info & SOUND_MASK_PCM)) {

  DPRINTF("emulating master volume\n");





  uaudio_pcm_setflags(dev, SD_F_SOFTPCMVOL);
 }
 if (sc->sc_pcm_bitperfect) {
  DPRINTF("device needs bitperfect by default\n");
  uaudio_pcm_setflags(dev, SD_F_BITPERFECT);
 }
 if (mixer_init(dev, mixer_class, sc))
  goto detach;
 sc->sc_mixer_init = 1;

 mixer_hwvol_init(dev);

 snprintf(status, sizeof(status), "at ? %s", PCM_KLDSTRING(snd_uaudio));

 if (pcm_register(dev, sc,
     (sc->sc_play_chan.num_alt > 0) ? 1 : 0,
     (sc->sc_rec_chan.num_alt > 0) ? 1 : 0)) {
  goto detach;
 }

 uaudio_pcm_setflags(dev, SD_F_MPSAFE);
 sc->sc_pcm_registered = 1;

 if (sc->sc_play_chan.num_alt > 0) {
  pcm_addchan(dev, PCMDIR_PLAY, chan_class, sc);
 }
 if (sc->sc_rec_chan.num_alt > 0) {
  pcm_addchan(dev, PCMDIR_REC, chan_class, sc);
 }
 pcm_setstatus(dev, status);

 uaudio_mixer_register_sysctl(sc, dev);

 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "feedback_rate", CTLFLAG_RD, &sc->sc_play_chan.feedback_rate,
     0, "Feedback sample rate in Hz");

 return (0);

detach:
 uaudio_detach_sub(dev);
 return (ENXIO);
}
