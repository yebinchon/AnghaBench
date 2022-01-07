
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct snd_mixer {scalar_t__* realdev; } ;


 scalar_t__ SOUND_MIXER_NONE ;
 scalar_t__ SOUND_MIXER_NRDEVICES ;

void
mix_setrealdev(struct snd_mixer *m, u_int32_t dev, u_int32_t realdev)
{
 if (m == ((void*)0) || dev >= SOUND_MIXER_NRDEVICES ||
     !(realdev == SOUND_MIXER_NONE || realdev < SOUND_MIXER_NRDEVICES))
  return;
 m->realdev[dev] = realdev;
}
