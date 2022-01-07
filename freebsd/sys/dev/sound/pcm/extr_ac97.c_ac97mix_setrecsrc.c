
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct snd_mixer {int dummy; } ;
struct ac97_info {int dummy; } ;


 int AC97_MIXER_SIZE ;
 scalar_t__ ac97_setrecsrc (struct ac97_info*,int) ;
 struct ac97_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static u_int32_t
ac97mix_setrecsrc(struct snd_mixer *m, u_int32_t src)
{
 int i;
 struct ac97_info *codec = mix_getdevinfo(m);

 if (codec == ((void*)0))
  return -1;
 for (i = 0; i < AC97_MIXER_SIZE; i++)
  if ((src & (1 << i)) != 0)
   break;
 return (ac97_setrecsrc(codec, i) == 0)? 1U << i : 0xffffffffU;
}
