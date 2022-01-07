
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int recsrc; int recdevs; } ;


 int EIDRM ;
 int SOUND_MIXER_NRDEVICES ;

__attribute__((used)) static int
mixer_get_recroute(struct snd_mixer *m, int *route)
{
 int i, cnt;

 cnt = 0;

 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {

  if ((1 << i) == m->recsrc)
   break;
  if ((1 << i) & m->recdevs)
   ++cnt;
 }

 if (i == SOUND_MIXER_NRDEVICES)
  return EIDRM;

 *route = cnt;
 return 0;
}
