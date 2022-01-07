
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;


 int mix_getdevinfo (struct snd_mixer*) ;
 int uaudio_mixer_init_sub (int ,struct snd_mixer*) ;

__attribute__((used)) static int
ua_mixer_init(struct snd_mixer *m)
{
 return (uaudio_mixer_init_sub(mix_getdevinfo(m), m));
}
