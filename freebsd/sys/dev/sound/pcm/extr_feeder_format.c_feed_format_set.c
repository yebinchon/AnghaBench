
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcm_feeder {struct feed_format_info* data; } ;
struct feed_format_info {int channels; int ialign; int ibps; int oalign; int obps; } ;


 int EINVAL ;

 int SND_CHN_MAX ;
 int SND_CHN_MIN ;

__attribute__((used)) static int
feed_format_set(struct pcm_feeder *f, int what, int value)
{
 struct feed_format_info *info;

 info = f->data;

 switch (what) {
 case 128:
  if (value < SND_CHN_MIN || value > SND_CHN_MAX)
   return (EINVAL);
  info->channels = (uint32_t)value;
  info->ialign = info->ibps * info->channels;
  info->oalign = info->obps * info->channels;
  break;
 default:
  return (EINVAL);
  break;
 }

 return (0);
}
