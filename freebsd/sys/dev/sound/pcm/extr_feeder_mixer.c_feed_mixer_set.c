
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_feeder {int data; } ;


 int EINVAL ;

 int FEEDMIXER_DATA (int ,int) ;
 int FEEDMIXER_INFOIDX (int ) ;
 int SND_CHN_MAX ;
 int SND_CHN_MIN ;

__attribute__((used)) static int
feed_mixer_set(struct pcm_feeder *f, int what, int value)
{

 switch (what) {
 case 128:
  if (value < SND_CHN_MIN || value > SND_CHN_MAX)
   return (EINVAL);
  f->data = FEEDMIXER_DATA(FEEDMIXER_INFOIDX(f->data), value);
  break;
 default:
  return (EINVAL);
  break;
 }

 return (0);
}
