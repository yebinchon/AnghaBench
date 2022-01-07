
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct sc_info {int lock; int dev; } ;


 int ENVY24HT_MIX_MASK ;
 int ENVY24HT_MIX_REC_MASK ;
 int ENVY24HT_MT_VOLRATE ;
 int SD_F_SOFTPCMVOL ;
 int device_printf (int ,char*) ;
 int envy24ht_wrmt (struct sc_info*,int ,int,int) ;
 struct sc_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int ) ;
 int mix_setrecdevs (struct snd_mixer*,int ) ;
 int pcm_getflags (int ) ;
 int pcm_setflags (int ,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
envy24htmixer_init(struct snd_mixer *m)
{
 struct sc_info *sc = mix_getdevinfo(m);




 if (sc == ((void*)0))
  return -1;


 snd_mtxlock(sc->lock);




 pcm_setflags(sc->dev, pcm_getflags(sc->dev) | SD_F_SOFTPCMVOL);

 mix_setdevs(m, ENVY24HT_MIX_MASK);
 mix_setrecdevs(m, ENVY24HT_MIX_REC_MASK);

 snd_mtxunlock(sc->lock);

 return 0;
}
