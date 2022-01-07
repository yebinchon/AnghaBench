
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
struct snd_mixer {size_t* parent; } ;


 size_t SOUND_MIXER_NONE ;
 size_t SOUND_MIXER_NRDEVICES ;

u_int32_t
mix_getparent(struct snd_mixer *m, u_int32_t dev)
{
 if (m == ((void*)0) || dev >= SOUND_MIXER_NRDEVICES)
  return SOUND_MIXER_NONE;
 return m->parent[dev];
}
