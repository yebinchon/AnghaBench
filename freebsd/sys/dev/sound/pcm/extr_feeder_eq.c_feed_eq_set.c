
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
struct pcm_feeder {TYPE_1__* desc; struct feed_eq_info* data; } ;
struct TYPE_6__ {void* gain; } ;
struct TYPE_5__ {void* gain; } ;
struct feed_eq_info {int channels; int align; int state; int preamp; TYPE_3__ bass; TYPE_2__ treble; void* rate; } ;
struct TYPE_4__ {int in; } ;


 int AFMT_BPS (int ) ;
 int EINVAL ;

 int FEEDEQ_BYPASS ;

 int FEEDEQ_DISABLE ;
 int FEEDEQ_ENABLE ;
 void* FEEDEQ_L2GAIN (int) ;

 int FEEDEQ_PREAMP2IDX (int) ;
 int FEEDEQ_PREAMP_MAX ;
 int FEEDEQ_PREAMP_MIN ;



 int FEEDEQ_UNKNOWN ;
 int SND_CHN_MAX ;
 int SND_CHN_MIN ;
 int feed_eq_reset (struct feed_eq_info*) ;
 int feed_eq_setup (struct feed_eq_info*) ;
 int feeder_eq_validrate (int) ;

__attribute__((used)) static int
feed_eq_set(struct pcm_feeder *f, int what, int value)
{
 struct feed_eq_info *info;

 info = f->data;

 switch (what) {
 case 132:
  if (value < SND_CHN_MIN || value > SND_CHN_MAX)
   return (EINVAL);
  info->channels = (uint32_t)value;
  info->align = info->channels * AFMT_BPS(f->desc->in);
  feed_eq_reset(info);
  break;
 case 130:
  if (feeder_eq_validrate(value) == 0)
   return (EINVAL);
  info->rate = (uint32_t)value;
  if (info->state == FEEDEQ_UNKNOWN)
   info->state = FEEDEQ_ENABLE;
  return (feed_eq_setup(info));
  break;
 case 128:
 case 133:
  if (value < 0 || value > 100)
   return (EINVAL);
  if (what == 128)
   info->treble.gain = FEEDEQ_L2GAIN(value);
  else
   info->bass.gain = FEEDEQ_L2GAIN(value);
  break;
 case 131:
  if (value < FEEDEQ_PREAMP_MIN || value > FEEDEQ_PREAMP_MAX)
   return (EINVAL);
  info->preamp = FEEDEQ_PREAMP2IDX(value);
  break;
 case 129:
  if (!(value == FEEDEQ_BYPASS || value == FEEDEQ_ENABLE ||
      value == FEEDEQ_DISABLE))
   return (EINVAL);
  info->state = value;
  feed_eq_reset(info);
  break;
 default:
  return (EINVAL);
  break;
 }

 return (0);
}
