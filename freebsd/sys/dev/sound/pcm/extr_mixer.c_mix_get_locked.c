
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct snd_mixer {int dummy; } ;


 int mixer_get (struct snd_mixer*,int ) ;

int
mix_get_locked(struct snd_mixer *m, u_int dev, int *pleft, int *pright)
{
 int level;

 level = mixer_get(m, dev);
 if (level < 0) {
  *pright = *pleft = -1;
  return (-1);
 }

 *pleft = level & 0xFF;
 *pright = (level >> 8) & 0xFF;

 return (0);
}
