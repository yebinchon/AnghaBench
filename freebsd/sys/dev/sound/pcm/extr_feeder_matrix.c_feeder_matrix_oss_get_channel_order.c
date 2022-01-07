
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pcmchan_matrix {int mask; scalar_t__ channels; TYPE_1__* map; } ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;
 scalar_t__ SND_CHN_OSS_MAX ;
 int SND_CHN_OSS_VALIDMASK ;
 int SND_CHN_T_MAX ;
 scalar_t__* snd_chn_to_oss ;

int
feeder_matrix_oss_get_channel_order(struct pcmchan_matrix *m,
    unsigned long long *map)
{
 unsigned long long tmpmap;
 uint32_t i;

 if (m == ((void*)0) || map == ((void*)0) || (m->mask & ~SND_CHN_OSS_VALIDMASK) ||
     m->channels > SND_CHN_OSS_MAX)
  return (EINVAL);

 tmpmap = 0x0000000000000000ULL;

 for (i = 0; i < SND_CHN_OSS_MAX && m->map[i].type != SND_CHN_T_MAX;
     i++) {
  if ((1 << m->map[i].type) & ~SND_CHN_OSS_VALIDMASK)
   return (EINVAL);
  tmpmap |=
      (unsigned long long)snd_chn_to_oss[m->map[i].type] <<
      (i * 4);
 }

 *map = tmpmap;

 return (0);
}
