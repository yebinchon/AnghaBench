
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct sc_pcminfo {int dev; struct aic_softc* sc; } ;
struct aic_softc {int lock; } ;


 int SD_F_SOFTPCMVOL ;
 int SOUND_MASK_PCM ;
 struct sc_pcminfo* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int) ;
 int pcm_getflags (int ) ;
 int pcm_setflags (int ,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
aicmixer_init(struct snd_mixer *m)
{
 struct sc_pcminfo *scp;
 struct aic_softc *sc;
 int mask;

 scp = mix_getdevinfo(m);
 sc = scp->sc;

 if (sc == ((void*)0))
  return -1;

 mask = SOUND_MASK_PCM;

 snd_mtxlock(sc->lock);
 pcm_setflags(scp->dev, pcm_getflags(scp->dev) | SD_F_SOFTPCMVOL);
 mix_setdevs(m, mask);
 snd_mtxunlock(sc->lock);

 return (0);
}
