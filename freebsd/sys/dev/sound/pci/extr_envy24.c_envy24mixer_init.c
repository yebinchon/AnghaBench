
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct sc_info {int lock; int dev; } ;


 int ENVY24_MIX_MASK ;
 int ENVY24_MIX_REC_MASK ;
 int ENVY24_MT_VOLRATE ;
 int device_printf (int ,char*) ;
 int envy24_wrmt (struct sc_info*,int ,int,int) ;
 struct sc_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int ) ;
 int mix_setrecdevs (struct snd_mixer*,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
envy24mixer_init(struct snd_mixer *m)
{
 struct sc_info *sc = mix_getdevinfo(m);




 if (sc == ((void*)0))
  return -1;


 snd_mtxlock(sc->lock);
 envy24_wrmt(sc, ENVY24_MT_VOLRATE, 0x30, 1);

 mix_setdevs(m, ENVY24_MIX_MASK);
 mix_setrecdevs(m, ENVY24_MIX_REC_MASK);
 snd_mtxunlock(sc->lock);

 return 0;
}
