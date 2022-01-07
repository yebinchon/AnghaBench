
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct agg_rchinfo {int srcphys; int base; unsigned int hwptr; int buflen; scalar_t__ sink; int * src; TYPE_1__* parent; } ;
typedef int int16_t ;
struct TYPE_4__ {int bufsz; } ;


 int APUREG_CURPTR ;
 int agg_lock (TYPE_1__*) ;
 int agg_unlock (TYPE_1__*) ;
 int interleave (int *,int *,scalar_t__,unsigned int) ;
 unsigned int wp_rdapu (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
aggch_feed_adc_stereo(struct agg_rchinfo *ch)
{
 unsigned cur, last;
 int16_t *src2;

 agg_lock(ch->parent);
 cur = wp_rdapu(ch->parent, 0, APUREG_CURPTR);
 agg_unlock(ch->parent);
 cur -= 0xffff & ((ch->srcphys - ch->base) >> 1);
 last = ch->hwptr;
 src2 = ch->src + ch->parent->bufsz/4;

 if (cur < last) {
  interleave(ch->src + last, src2 + last,
      ch->sink + 2*last, ch->buflen/2 - last);
  interleave(ch->src, src2,
      ch->sink, cur);
 } else if (cur > last)
  interleave(ch->src + last, src2 + last,
      ch->sink + 2*last, cur - last);
 ch->hwptr = cur;
}
