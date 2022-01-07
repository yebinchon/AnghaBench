
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;


 int mix_getdevinfo (struct snd_mixer*) ;
 int uaudio_mixer_uninit_sub (int ) ;

__attribute__((used)) static int
ua_mixer_uninit(struct snd_mixer *m)
{
 return (uaudio_mixer_uninit_sub(mix_getdevinfo(m)));
}
