
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct snd_mixer {int dummy; } ;
struct es_info {int escfg; } ;
struct TYPE_2__ {scalar_t__ recmask; scalar_t__ avail; } ;


 scalar_t__ ES_SINGLE_PCM_MIX (int ) ;
 int SOUND_MIXER_NRDEVICES ;
 int SOUND_MIXER_SYNTH ;
 struct es_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int) ;
 int mix_setrecdevs (struct snd_mixer*,int) ;
 TYPE_1__* mixtable ;

__attribute__((used)) static int
es1370_mixinit(struct snd_mixer *m)
{
 struct es_info *es;
 int i;
 uint32_t v;

 es = mix_getdevinfo(m);
 v = 0;
 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if (mixtable[i].avail)
   v |= (1 << i);
 }







 if (ES_SINGLE_PCM_MIX(es->escfg))
  v &= ~(1 << SOUND_MIXER_SYNTH);
 mix_setdevs(m, v);
 v = 0;
 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if (mixtable[i].recmask)
   v |= (1 << i);
 }
 if (ES_SINGLE_PCM_MIX(es->escfg))
  v &= ~(1 << SOUND_MIXER_SYNTH);
 mix_setrecdevs(m, v);
 return (0);
}
