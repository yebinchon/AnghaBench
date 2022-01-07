
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_mixer {int dummy; } ;
struct emu_pcm_info {scalar_t__ route; int ac97_playdevs; int ac97_recdevs; scalar_t__ is_emu10k1; int * sm; int * codec; int * ac97_mixerclass; int dev; } ;
struct TYPE_4__ {scalar_t__ recdev; scalar_t__ present; } ;
struct TYPE_3__ {scalar_t__ recdev; scalar_t__ present; } ;


 scalar_t__ RT_FRONT ;
 int SOUND_MIXER_NRDEVICES ;
 int SOUND_MIXER_PCM ;
 int SOUND_MIXER_VOLUME ;
 TYPE_2__* dspmix_k1 ;
 TYPE_1__* dspmix_k2 ;
 struct emu_pcm_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_getdevs (int *) ;
 int mix_getrecdevs (int *) ;
 int mix_setdevs (struct snd_mixer*,int) ;
 int mix_setrecdevs (struct snd_mixer*,int) ;
 int * mixer_create (int ,int *,int *,char*) ;

__attribute__((used)) static int
emu_dspmixer_init(struct snd_mixer *m)
{
 struct emu_pcm_info *sc;
 int i;
 int p, r;

 p = 0;
 r = 0;

 sc = mix_getdevinfo(m);

 if (sc->route == RT_FRONT) {

  if ((sc->ac97_mixerclass != ((void*)0)) && (sc->codec != ((void*)0))) {
   sc->sm = mixer_create(sc->dev, sc->ac97_mixerclass, sc->codec, "ac97");
   if (sc->sm != ((void*)0)) {
    p = mix_getdevs(sc->sm);
    r = mix_getrecdevs(sc->sm);
   }
  }

  sc->ac97_playdevs = p;
  sc->ac97_recdevs = r;
 }


 p |= (1 << SOUND_MIXER_PCM);
 p |= (1 << SOUND_MIXER_VOLUME);

 if (sc->route == RT_FRONT) {
  if (sc->is_emu10k1) {
   for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
    if (dspmix_k1[i].present)
     p |= (1 << i);
    if (dspmix_k1[i].recdev)
     r |= (1 << i);
   }
  } else {
   for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
    if (dspmix_k2[i].present)
     p |= (1 << i);
    if (dspmix_k2[i].recdev)
     r |= (1 << i);
   }
  }
 }

 mix_setdevs(m, p);
 mix_setrecdevs(m, r);

 return (0);
}
