
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_mixer {int dummy; } ;
struct sc_info {int dacn; scalar_t__* left; scalar_t__* right; int lock; TYPE_3__* chan; int * dac; TYPE_2__* cfg; int dev; } ;
struct TYPE_6__ {scalar_t__ run; } ;
struct TYPE_5__ {TYPE_1__* codec; } ;
struct TYPE_4__ {int (* setvolume ) (int ,int ,unsigned int,unsigned int) ;} ;


 int ENVY24HT_CHAN_PLAY_SPDIF ;
 scalar_t__ ENVY24HT_VOL_MIN ;
 void* ENVY24HT_VOL_MUTE ;
 int PCMDIR_PLAY ;
 int device_printf (int ,char*,unsigned int,unsigned int,unsigned int) ;
 int* envy24ht_chanmap ;
 int* envy24ht_mixmap ;
 int envy24ht_setvolume (struct sc_info*,int) ;
 struct sc_info* mix_getdevinfo (struct snd_mixer*) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int stub1 (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int
envy24htmixer_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
 struct sc_info *sc = mix_getdevinfo(m);
 int ch = envy24ht_mixmap[dev];
 int hwch;
 int i;

 if (sc == ((void*)0))
  return -1;
 if (dev == 0 && sc->cfg->codec->setvolume == ((void*)0))
  return -1;
 if (dev != 0 && ch == -1)
  return -1;
 hwch = envy24ht_chanmap[ch];





 snd_mtxlock(sc->lock);
 if (dev == 0) {
  for (i = 0; i < sc->dacn; i++) {
   sc->cfg->codec->setvolume(sc->dac[i], PCMDIR_PLAY, left, right);
  }
 }
 else {

  if ((sc->left[hwch] = 100 - left) > ENVY24HT_VOL_MIN)
   sc->left[hwch] = ENVY24HT_VOL_MUTE;
  if ((sc->right[hwch] = 100 - right) > ENVY24HT_VOL_MIN)
   sc->right[hwch] = ENVY24HT_VOL_MUTE;


  if (hwch > ENVY24HT_CHAN_PLAY_SPDIF || sc->chan[ch].run)
   envy24ht_setvolume(sc, hwch);
 }
 snd_mtxunlock(sc->lock);

 return right << 8 | left;
}
