
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sack_filter {int sf_used; int sf_bits; TYPE_1__* sf_blks; } ;
typedef size_t int32_t ;
struct TYPE_2__ {int end; int start; } ;


 scalar_t__ SEQ_GT (int ,int ) ;
 scalar_t__ SEQ_LT (int ,int ) ;
 int sack_blk_clr (struct sack_filter*,size_t) ;

__attribute__((used)) static void
sack_collapse(struct sack_filter *sf, int32_t src, int32_t into)
{
 if (SEQ_LT(sf->sf_blks[src].start, sf->sf_blks[into].start)) {

  sf->sf_blks[into].start = sf->sf_blks[src].start;
 }
 if (SEQ_GT(sf->sf_blks[src].end, sf->sf_blks[into].end)) {

  sf->sf_blks[into].end = sf->sf_blks[src].end;
 }
 sf->sf_bits = sack_blk_clr(sf, src);
 sf->sf_used--;
}
