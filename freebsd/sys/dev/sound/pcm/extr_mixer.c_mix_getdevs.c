
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct snd_mixer {int devs; } ;



u_int32_t
mix_getdevs(struct snd_mixer *m)
{
 return m->devs;
}
