
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sackblk {scalar_t__ end; scalar_t__ start; } ;
struct sack_filter {int sf_used; void* sf_bits; TYPE_1__* sf_blks; } ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;


 int SACK_FILTER_BLOCKS ;
 scalar_t__ SEQ_GT (scalar_t__,scalar_t__) ;
 scalar_t__ SEQ_LT (scalar_t__,scalar_t__) ;
 void* sack_blk_clr (struct sack_filter*,int) ;
 scalar_t__ sack_blk_used (struct sack_filter*,int) ;

void
sack_filter_reject(struct sack_filter *sf, struct sackblk *in)
{
 int i;

 for(i=0; i<SACK_FILTER_BLOCKS; i++) {
  if (sack_blk_used(sf, i) == 0)
   continue;




  if (sf->sf_blks[i].end == in->end) {

   if (SEQ_GT(in->start, sf->sf_blks[i].start))


    sf->sf_blks[i].end = in->start;
   else {





    sf->sf_bits = sack_blk_clr(sf, i);
    sf->sf_used--;
   }
   continue;
  }
  if (sf->sf_blks[i].start == in->start) {
   if (SEQ_LT(in->end, sf->sf_blks[i].end)) {


    sf->sf_blks[i].start = in->end;
   } else {





    sf->sf_bits = sack_blk_clr(sf, i);
    sf->sf_used--;
   }
   continue;
  }
 }
}
