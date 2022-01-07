
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;


 int AD1816_MIXER_DEVICES ;
 int AD1816_REC_DEVICES ;
 int mix_setdevs (struct snd_mixer*,int ) ;
 int mix_setrecdevs (struct snd_mixer*,int ) ;

__attribute__((used)) static int
ad1816mix_init(struct snd_mixer *m)
{
 mix_setdevs(m, AD1816_MIXER_DEVICES);
 mix_setrecdevs(m, AD1816_REC_DEVICES);
 return 0;
}
