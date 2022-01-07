
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct ac97_info {int dummy; } ;


 int ac97_reinitmixer (struct ac97_info*) ;
 struct ac97_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static int
ac97mix_reinit(struct snd_mixer *m)
{
 struct ac97_info *codec = mix_getdevinfo(m);

 if (codec == ((void*)0))
  return -1;
 return ac97_reinitmixer(codec);
}
