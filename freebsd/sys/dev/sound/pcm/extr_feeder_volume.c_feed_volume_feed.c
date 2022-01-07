
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct pcm_feeder {int source; struct feed_volume_info* data; } ;
struct pcm_channel {int** volume; } ;
struct feed_volume_info {scalar_t__ state; int* matrix; int channels; int bps; int (* apply ) (int*,int*,int,int *,int) ;int volume_class; } ;


 int FEEDER_FEED (int ,struct pcm_channel*,int *,int,void*) ;
 scalar_t__ FEEDVOLUME_BYPASS ;
 int SND_FXDIV (int,int) ;
 size_t SND_VOL_C_VAL (int ) ;
 int SND_VOL_FLAT ;
 int stub1 (int*,int*,int,int *,int) ;

__attribute__((used)) static int
feed_volume_feed(struct pcm_feeder *f, struct pcm_channel *c, uint8_t *b,
    uint32_t count, void *source)
{
 struct feed_volume_info *info;
 uint32_t j, align;
 int i, *vol, *matrix;
 uint8_t *dst;




 info = f->data;

 if (info->state == FEEDVOLUME_BYPASS)
  return (FEEDER_FEED(f->source, c, b, count, source));

 vol = c->volume[SND_VOL_C_VAL(info->volume_class)];
 matrix = info->matrix;




 j = 0;
 i = info->channels;
 do {
  if (vol[matrix[--i]] != SND_VOL_FLAT) {
   j = 1;
   break;
  }
 } while (i != 0);


 if (j == 0)
  return (FEEDER_FEED(f->source, c, b, count, source));

 dst = b;
 align = info->bps * info->channels;

 do {
  if (count < align)
   break;

  j = SND_FXDIV(FEEDER_FEED(f->source, c, dst, count, source),
      align);
  if (j == 0)
   break;

  info->apply(vol, matrix, info->channels, dst, j);

  j *= align;
  dst += j;
  count -= j;

 } while (count != 0);

 return (dst - b);
}
