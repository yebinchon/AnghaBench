
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_mixer {int dummy; } ;
struct sc_pcminfo {int dev; TYPE_1__* hc; struct sc_info* sc; } ;
struct sc_info {int lock; } ;
struct TYPE_2__ {scalar_t__ rec; scalar_t__ play; } ;


 int SD_F_SOFTPCMVOL ;
 int SOUND_MASK_PCM ;
 int SOUND_MASK_RECLEV ;
 int SOUND_MASK_VOLUME ;
 struct sc_pcminfo* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int) ;
 int pcm_getflags (int ) ;
 int pcm_setflags (int ,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
hdspemixer_init(struct snd_mixer *m)
{
 struct sc_pcminfo *scp;
 struct sc_info *sc;
 int mask;

 scp = mix_getdevinfo(m);
 sc = scp->sc;
 if (sc == ((void*)0))
  return (-1);

 mask = SOUND_MASK_PCM;

 if (scp->hc->play)
  mask |= SOUND_MASK_VOLUME;

 if (scp->hc->rec)
  mask |= SOUND_MASK_RECLEV;

 snd_mtxlock(sc->lock);
 pcm_setflags(scp->dev, pcm_getflags(scp->dev) | SD_F_SOFTPCMVOL);
 mix_setdevs(m, mask);
 snd_mtxunlock(sc->lock);

 return (0);
}
