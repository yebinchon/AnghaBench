
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sackblk {int end; int start; } ;
struct sack_filter {int sf_cur; TYPE_1__* sf_blks; int sf_ack; } ;
typedef int int32_t ;
struct TYPE_2__ {int start; int end; } ;


 int SACK_FILTER_BLOCKS ;
 scalar_t__ SEQ_GEQ (int ,int ) ;
 scalar_t__ SEQ_GT (int ,int ) ;
 scalar_t__ SEQ_LEQ (int ,int ) ;
 scalar_t__ SEQ_LT (int ,int ) ;
 scalar_t__ sack_blk_used (struct sack_filter*,int) ;

__attribute__((used)) static int32_t
is_sack_on_board(struct sack_filter *sf, struct sackblk *b)
{
 int32_t i, cnt;

 for (i = sf->sf_cur, cnt=0; cnt < SACK_FILTER_BLOCKS; cnt++) {
  if (sack_blk_used(sf, i)) {
   if (SEQ_LT(b->start, sf->sf_ack)) {

    b->start = sf->sf_ack;
   }
   if (SEQ_LT(b->end, sf->sf_ack)) {

    b->end = sf->sf_ack;
   }
   if (b->start == b->end) {
    return(1);
   }

   if (SEQ_LEQ(sf->sf_blks[i].start, b->start) &&
       SEQ_GEQ(sf->sf_blks[i].end, b->end)) {
    return(1);
   }

   if(SEQ_LT(sf->sf_blks[i].end, b->start)) {






    goto nxt_blk;
   }

   if (SEQ_GT(sf->sf_blks[i].start, b->end)) {






    goto nxt_blk;
   }
   if (SEQ_LEQ(sf->sf_blks[i].start, b->start)) {
    b->start = sf->sf_blks[i].end;
    sf->sf_blks[i].end = b->end;
    goto nxt_blk;
   }
   if (SEQ_GEQ(sf->sf_blks[i].end, b->end)) {
    b->end = sf->sf_blks[i].start;
    sf->sf_blks[i].start = b->start;
    goto nxt_blk;
   }
  }
 nxt_blk:
  i++;
  i %= SACK_FILTER_BLOCKS;
 }

 if (b->start != b->end)
  return(0);
 else
  return(1);
}
