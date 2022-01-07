
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct pcm_feeder {int source; struct feed_eq_info* data; } ;
struct pcm_channel {int dummy; } ;
struct feed_eq_info {scalar_t__ state; scalar_t__ align; int (* biquad ) (struct feed_eq_info*,int *,scalar_t__) ;} ;


 scalar_t__ FEEDEQ_BYPASS ;
 int FEEDER_FEED (int ,struct pcm_channel*,int *,scalar_t__,void*) ;
 scalar_t__ SND_FXDIV (int,scalar_t__) ;
 scalar_t__ SND_FXROUND (scalar_t__,scalar_t__) ;
 int stub1 (struct feed_eq_info*,int *,scalar_t__) ;

__attribute__((used)) static int
feed_eq_feed(struct pcm_feeder *f, struct pcm_channel *c, uint8_t *b,
    uint32_t count, void *source)
{
 struct feed_eq_info *info;
 uint32_t j;
 uint8_t *dst;

 info = f->data;







 if (info->state == FEEDEQ_BYPASS)
  return (FEEDER_FEED(f->source, c, b, count, source));

 dst = b;
 count = SND_FXROUND(count, info->align);

 do {
  if (count < info->align)
   break;

  j = SND_FXDIV(FEEDER_FEED(f->source, c, dst, count, source),
      info->align);
  if (j == 0)
   break;

  info->biquad(info, dst, j);

  j *= info->align;
  dst += j;
  count -= j;

 } while (count != 0);

 return (dst - b);
}
