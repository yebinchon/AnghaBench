
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct snd_mixer {int dummy; } ;
struct TYPE_2__ {scalar_t__ avail; scalar_t__ recdev; } ;


 int SOUND_MIXER_NRDEVICES ;
 TYPE_1__** cs4231_mix_table ;
 int mix_setdevs (struct snd_mixer*,int) ;
 int mix_setrecdevs (struct snd_mixer*,int) ;

__attribute__((used)) static int
cs4231_mixer_init(struct snd_mixer *m)
{
 u_int32_t v;
 int i;

 v = 0;
 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
  if (cs4231_mix_table[i][0].avail != 0)
   v |= (1 << i);
 mix_setdevs(m, v);
 v = 0;
 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
  if (cs4231_mix_table[i][0].recdev != 0)
   v |= (1 << i);
 mix_setrecdevs(m, v);
 return (0);
}
