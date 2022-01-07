
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct z_info {scalar_t__ z_maxfeed; } ;
struct pcm_feeder {scalar_t__ data; } ;
struct pcm_channel {int dummy; } ;


 int z_min (scalar_t__,scalar_t__) ;
 scalar_t__ z_resampler_feed_internal (struct pcm_feeder*,struct pcm_channel*,int *,int ,void*) ;

__attribute__((used)) static int
z_resampler_feed(struct pcm_feeder *f, struct pcm_channel *c, uint8_t *b,
    uint32_t count, void *source)
{
 uint32_t feed, maxfeed, left;




 maxfeed = ((struct z_info *)(f->data))->z_maxfeed;
 left = count;

 do {
  feed = z_resampler_feed_internal(f, c, b,
      z_min(maxfeed, left), source);
  b += feed;
  left -= feed;
 } while (left != 0 && feed != 0);

 return (count - left);
}
