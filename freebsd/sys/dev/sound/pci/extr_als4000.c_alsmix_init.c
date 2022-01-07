
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct snd_mixer {int dummy; } ;
struct TYPE_2__ {scalar_t__ iselect; scalar_t__ bits; } ;


 size_t SOUND_MIXER_NRDEVICES ;
 TYPE_1__* amt ;
 int mix_setdevs (struct snd_mixer*,size_t) ;
 int mix_setrecdevs (struct snd_mixer*,size_t) ;

__attribute__((used)) static int
alsmix_init(struct snd_mixer *m)
{
 u_int32_t i, v;

 for (i = v = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if (amt[i].bits) v |= 1 << i;
 }
 mix_setdevs(m, v);

 for (i = v = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if (amt[i].iselect) v |= 1 << i;
 }
 mix_setrecdevs(m, v);
 return 0;
}
