
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct ac97_info {int dummy; } ;


 unsigned int AC97_MIXER_SIZE ;
 int ac97_setmixer (struct ac97_info*,unsigned int,unsigned int,unsigned int) ;
 struct ac97_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static int
ac97mix_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
 struct ac97_info *codec = mix_getdevinfo(m);

 if (codec == ((void*)0) || dev >= AC97_MIXER_SIZE)
  return -1;
 return ac97_setmixer(codec, dev, left, right);
}
