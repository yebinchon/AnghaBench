
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct snd_mixer {int dummy; } ;


 int mixer_set (struct snd_mixer*,int ,int) ;

int
mix_set_locked(struct snd_mixer *m, u_int dev, int left, int right)
{
 int level;

 level = (left & 0xFF) | ((right & 0xFF) << 8);

 return (mixer_set(m, dev, level));
}
