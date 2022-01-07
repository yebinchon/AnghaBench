
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct sackblk {int end; int start; } ;
struct sack_filter {TYPE_1__* sf_blks; } ;
typedef size_t int32_t ;
struct TYPE_2__ {int end; int start; } ;


 size_t SACK_FILTER_BLOCKS ;
 scalar_t__ SEQ_GEQ (int ,int ) ;
 scalar_t__ SEQ_LEQ (int ,int ) ;
 scalar_t__ sack_blk_used (struct sack_filter*,size_t) ;

__attribute__((used)) static int32_t
sack_blocks_overlap_or_meet(struct sack_filter *sf, struct sackblk *sb, uint32_t skip)
{
 int32_t i;

 for(i=0; i<SACK_FILTER_BLOCKS; i++) {
  if (sack_blk_used(sf, i) == 0)
   continue;
  if (i == skip)
   continue;
  if (SEQ_GEQ(sf->sf_blks[i].end, sb->start) &&
      SEQ_LEQ(sf->sf_blks[i].end, sb->end) &&
      SEQ_LEQ(sf->sf_blks[i].start, sb->start)) {
   return(i);
  }
  if (SEQ_LEQ(sf->sf_blks[i].start, sb->end) &&
      SEQ_GEQ(sf->sf_blks[i].start, sb->start) &&
      SEQ_GEQ(sf->sf_blks[i].end, sb->end)) {
   return(i);
  }
 }
 return (-1);
}
