
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcm_feeder {TYPE_1__* desc; int data; } ;
struct TYPE_4__ {scalar_t__ format; } ;
struct TYPE_3__ {scalar_t__ in; scalar_t__ out; } ;


 int AFMT_CHANNEL (scalar_t__) ;
 scalar_t__ AFMT_ENCODING (scalar_t__) ;
 int EINVAL ;
 int FEEDMIXER_DATA (int,int ) ;
 int FEEDMIXER_TAB_SIZE ;
 TYPE_2__* feed_mixer_info_tab ;

__attribute__((used)) static int
feed_mixer_init(struct pcm_feeder *f)
{
 int i;

 if (f->desc->in != f->desc->out)
  return (EINVAL);

 for (i = 0; i < FEEDMIXER_TAB_SIZE; i++) {
  if (AFMT_ENCODING(f->desc->in) ==
      feed_mixer_info_tab[i].format) {
       f->data =
       FEEDMIXER_DATA(i, AFMT_CHANNEL(f->desc->in));
   return (0);
  }
 }

 return (EINVAL);
}
