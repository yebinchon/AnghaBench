
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int devs; int* level; } ;


 int SOUND_MIXER_NRDEVICES ;

__attribute__((used)) static int
mixer_get(struct snd_mixer *mixer, int dev)
{
 if ((dev < SOUND_MIXER_NRDEVICES) && (mixer->devs & (1 << dev)))
  return mixer->level[dev];
 else
  return -1;
}
