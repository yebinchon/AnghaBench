
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmchan_matrix {int dummy; } ;
struct pcm_feeder {struct feed_volume_info* data; } ;
struct feed_volume_info {int volume_class; int state; } ;


 int EINVAL ;
 int FEEDVOLUME_BYPASS ;


 int FEEDVOLUME_ENABLE ;

 int SND_CHN_MAX ;
 int SND_CHN_MIN ;
 int SND_VOL_C_BEGIN ;
 int SND_VOL_C_END ;
 struct pcmchan_matrix* feeder_matrix_default_channel_map (int) ;
 int feeder_volume_apply_matrix (struct pcm_feeder*,struct pcmchan_matrix*) ;

__attribute__((used)) static int
feed_volume_set(struct pcm_feeder *f, int what, int value)
{
 struct feed_volume_info *info;
 struct pcmchan_matrix *m;
 int ret;

 info = f->data;
 ret = 0;

 switch (what) {
 case 129:
  if (value < SND_VOL_C_BEGIN || value > SND_VOL_C_END)
   return (EINVAL);
  info->volume_class = value;
  break;
 case 130:
  if (value < SND_CHN_MIN || value > SND_CHN_MAX)
   return (EINVAL);
  m = feeder_matrix_default_channel_map(value);
  if (m == ((void*)0))
   return (EINVAL);
  ret = feeder_volume_apply_matrix(f, m);
  break;
 case 128:
  if (!(value == FEEDVOLUME_ENABLE || value == FEEDVOLUME_BYPASS))
   return (EINVAL);
  info->state = value;
  break;
 default:
  return (EINVAL);
  break;
 }

 return (ret);
}
