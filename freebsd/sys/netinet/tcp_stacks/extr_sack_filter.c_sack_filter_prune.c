
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* tcp_seq ;
struct sack_filter {void* sf_ack; TYPE_1__* sf_blks; int sf_used; int sf_bits; } ;
typedef size_t int32_t ;
struct TYPE_2__ {void* start; void* end; } ;


 size_t SACK_FILTER_BLOCKS ;
 scalar_t__ SEQ_GT (void*,void*) ;
 int sack_blk_clr (struct sack_filter*,size_t) ;
 scalar_t__ sack_blk_used (struct sack_filter*,size_t) ;

__attribute__((used)) static void
sack_filter_prune(struct sack_filter *sf, tcp_seq th_ack)
{
 int32_t i;

 for (i = 0; i < SACK_FILTER_BLOCKS; i++) {
  if (sack_blk_used(sf, i)) {
   if (SEQ_GT(th_ack, sf->sf_blks[i].end)) {

    sf->sf_bits = sack_blk_clr(sf, i);
    sf->sf_used--;
   } else if (SEQ_GT(th_ack, sf->sf_blks[i].start)) {

    sf->sf_blks[i].start = th_ack;





   }
  }
 }
 sf->sf_ack = th_ack;
}
