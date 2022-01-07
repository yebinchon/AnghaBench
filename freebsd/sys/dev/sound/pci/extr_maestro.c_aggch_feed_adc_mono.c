
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agg_rchinfo {int phys; int base; unsigned int hwptr; unsigned int buflen; scalar_t__ sink; scalar_t__ src; int parent; } ;


 int APUREG_CURPTR ;
 int agg_lock (int ) ;
 int agg_unlock (int ) ;
 int mixdown (scalar_t__,scalar_t__,unsigned int) ;
 unsigned int wp_rdapu (int ,int ,int ) ;

__attribute__((used)) static void
aggch_feed_adc_mono(struct agg_rchinfo *ch)
{
 unsigned cur, last;

 agg_lock(ch->parent);
 cur = wp_rdapu(ch->parent, 0, APUREG_CURPTR);
 agg_unlock(ch->parent);
 cur -= 0xffff & ((ch->phys - ch->base) >> 1);
 last = ch->hwptr;

 if (cur < last) {
  mixdown(ch->src + last, ch->sink + last, ch->buflen - last);
  mixdown(ch->src, ch->sink, cur);
 } else if (cur > last)
  mixdown(ch->src + last, ch->sink + last, cur - last);
 ch->hwptr = cur;
}
