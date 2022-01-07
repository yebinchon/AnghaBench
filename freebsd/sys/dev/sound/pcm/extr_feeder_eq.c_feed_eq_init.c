
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pcm_feeder {struct feed_eq_info* data; TYPE_1__* desc; } ;
struct TYPE_7__ {void* gain; } ;
struct TYPE_6__ {void* gain; } ;
struct feed_eq_info {int channels; int align; int * biquad; int state; int preamp; TYPE_3__ bass; TYPE_2__ treble; int rate; } ;
typedef int * feed_eq_t ;
struct TYPE_8__ {scalar_t__ format; int * biquad; } ;
struct TYPE_5__ {scalar_t__ in; scalar_t__ out; } ;


 int AFMT_BPS (scalar_t__) ;
 int AFMT_CHANNEL (scalar_t__) ;
 scalar_t__ AFMT_ENCODING (scalar_t__) ;
 int EINVAL ;
 int ENOMEM ;
 int FEEDEQ_BIQUAD_TAB_SIZE ;
 void* FEEDEQ_L2GAIN (int) ;
 int FEEDEQ_PREAMP2IDX (int ) ;
 int FEEDEQ_PREAMP_DEFAULT ;
 int FEEDEQ_RATE_MIN ;
 int FEEDEQ_UNKNOWN ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 TYPE_4__* feed_eq_biquad_tab ;
 int feed_eq_setup (struct feed_eq_info*) ;
 struct feed_eq_info* malloc (int,int ,int) ;

__attribute__((used)) static int
feed_eq_init(struct pcm_feeder *f)
{
 struct feed_eq_info *info;
 feed_eq_t biquad_op;
 int i;

 if (f->desc->in != f->desc->out)
  return (EINVAL);

 biquad_op = ((void*)0);

 for (i = 0; i < FEEDEQ_BIQUAD_TAB_SIZE && biquad_op == ((void*)0); i++) {
  if (AFMT_ENCODING(f->desc->in) == feed_eq_biquad_tab[i].format)
   biquad_op = feed_eq_biquad_tab[i].biquad;
 }

 if (biquad_op == ((void*)0))
  return (EINVAL);

 info = malloc(sizeof(*info), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (info == ((void*)0))
  return (ENOMEM);

 info->channels = AFMT_CHANNEL(f->desc->in);
 info->align = info->channels * AFMT_BPS(f->desc->in);

 info->rate = FEEDEQ_RATE_MIN;
 info->treble.gain = FEEDEQ_L2GAIN(50);
 info->bass.gain = FEEDEQ_L2GAIN(50);
 info->preamp = FEEDEQ_PREAMP2IDX(FEEDEQ_PREAMP_DEFAULT);
 info->state = FEEDEQ_UNKNOWN;

 info->biquad = biquad_op;

 f->data = info;

 return (feed_eq_setup(info));
}
