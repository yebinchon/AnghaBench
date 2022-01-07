
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct pcm_feeder {int source; struct feed_matrix_info* data; } ;
struct pcm_channel {int dummy; } ;
struct feed_matrix_info {scalar_t__ oalign; scalar_t__ ialign; int (* apply ) (struct feed_matrix_info*,int *,int *,scalar_t__) ;int * reservoir; TYPE_1__* matrix; } ;
struct TYPE_2__ {scalar_t__* chn; } ;


 scalar_t__ FEEDER_FEED (int ,struct pcm_channel*,int *,scalar_t__,void*) ;
 scalar_t__ SND_CHN_T_EOF ;
 int SND_FXDIV (scalar_t__,int) ;
 scalar_t__ SND_FXROUND (scalar_t__,scalar_t__) ;
 int stub1 (struct feed_matrix_info*,int *,int *,scalar_t__) ;

__attribute__((used)) static int
feed_matrix_feed(struct pcm_feeder *f, struct pcm_channel *c, uint8_t *b,
    uint32_t count, void *source)
{
 struct feed_matrix_info *info;
 uint32_t j, inmax;
 uint8_t *src, *dst;

 info = f->data;
 if (info->matrix[0].chn[0] == SND_CHN_T_EOF)
  return (FEEDER_FEED(f->source, c, b, count, source));

 dst = b;
 count = SND_FXROUND(count, info->oalign);
 inmax = info->ialign + info->oalign;
 do {
  if (count < info->oalign)
   break;

  if (count < inmax) {
   src = info->reservoir;
   j = info->ialign;
  } else {
   if (info->ialign == info->oalign)
    j = count - info->oalign;
   else if (info->ialign > info->oalign)
    j = SND_FXROUND(count - info->oalign,
        info->ialign);
   else
    j = (SND_FXDIV(count, info->oalign) - 1) *
        info->ialign;
   src = dst + count - j;
  }

  j = SND_FXDIV(FEEDER_FEED(f->source, c, src, j, source),
      info->ialign);
  if (j == 0)
   break;

  info->apply(info, src, dst, j);

  j *= info->oalign;
  dst += j;
  count -= j;

 } while (count != 0);

 return (dst - b);
}
