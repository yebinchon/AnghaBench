
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct z_info {scalar_t__ channels; scalar_t__ bps; scalar_t__ z_startdrift; scalar_t__ z_alphadrift; int z_start; int z_size; scalar_t__ z_pos; int z_cycle; scalar_t__ z_alpha; scalar_t__ z_gy; int (* z_resample ) (struct z_info*,int *) ;int * z_delay; } ;
struct pcm_feeder {int source; struct z_info* data; } ;
struct pcm_channel {int dummy; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ SND_FXDIV (int,scalar_t__) ;
 scalar_t__ _Z_GY2GX (struct z_info*,int ,int) ;
 int fprintf (int ,char*,scalar_t__,scalar_t__,scalar_t__,int,int) ;
 int stderr ;
 int stub1 (struct z_info*,int *) ;
 int z_copy (int *,int *,scalar_t__) ;
 scalar_t__ z_drift (struct z_info*,scalar_t__,int) ;
 int z_feed (int ,struct pcm_channel*,int *,scalar_t__,void*) ;
 scalar_t__ z_fetched (struct z_info*) ;
 int z_free (struct z_info*) ;
 int z_gx2gy (struct z_info*,scalar_t__) ;
 scalar_t__ z_gy2gx (struct z_info*,int) ;
 scalar_t__ z_min (int ,scalar_t__) ;
 scalar_t__ z_next (struct z_info*,int,scalar_t__) ;
 void* z_prev (struct z_info*,int,int) ;

__attribute__((used)) static uint32_t
z_resampler_feed_internal(struct pcm_feeder *f, struct pcm_channel *c,
    uint8_t *b, uint32_t count, void *source)
{
 struct z_info *info;
 int32_t alphadrift, startdrift, reqout, ocount, reqin, align;
 int32_t fetch, fetched, start, cp;
 uint8_t *dst;

 info = f->data;
 if (info->z_resample == ((void*)0))
  return (z_feed(f->source, c, b, count, source));






 align = info->channels * info->bps;
 ocount = SND_FXDIV(count, align);
 if (ocount == 0)
  return (0);





 reqin = z_gy2gx(info, ocount) - z_fetched(info);





 startdrift = _Z_GY2GX(info, 0, 1);
 alphadrift = z_drift(info, startdrift, 1);


 dst = b;

 do {
  if (reqin != 0) {
   fetch = z_min(z_free(info), reqin);
   if (fetch == 0) {





    fetched = z_fetched(info);
    start = z_prev(info, info->z_start,
        (info->z_size << 1) - 1);
    cp = (info->z_size << 1) + fetched;
    z_copy(info->z_delay + (start * align),
        info->z_delay, cp * align);
    info->z_start =
        z_prev(info, info->z_size << 1, 1);
    info->z_pos =
        z_next(info, info->z_start, fetched + 1);
    fetch = z_min(z_free(info), reqin);
   }
   if (fetch != 0) {




    fetched = SND_FXDIV(z_feed(f->source, c,
        info->z_delay + (info->z_pos * align),
        fetch * align, source), align);





    reqin -= fetched;
    info->z_pos += fetched;
    if (fetched != fetch)
     reqin = 0;
   }
  }

  reqout = z_min(z_gx2gy(info, z_fetched(info)), ocount);
  if (reqout != 0) {
   ocount -= reqout;
   do {
    info->z_resample(info, dst);






    info->z_alpha += alphadrift;
    if (info->z_alpha < info->z_gy)
     info->z_start += startdrift;
    else {
     info->z_start += startdrift - 1;
     info->z_alpha -= info->z_gy;
    }

    dst += align;



   } while (--reqout != 0);
  }
 } while (reqin != 0 && ocount != 0);




 return (dst - b);
}
