
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sack_filter {size_t sf_cur; int * sf_blks; } ;
typedef size_t int32_t ;


 size_t SACK_FILTER_BLOCKS ;
 scalar_t__ sack_blk_used (struct sack_filter*,size_t) ;
 size_t sack_blocks_overlap_or_meet (struct sack_filter*,int *,size_t) ;
 int sack_collapse (struct sack_filter*,size_t,size_t) ;

__attribute__((used)) static void
sack_board_collapse(struct sack_filter *sf)
{
 int32_t i, j, i_d, j_d;

 for(i=0; i<SACK_FILTER_BLOCKS; i++) {
  if (sack_blk_used(sf, i) == 0)
   continue;





  j = sack_blocks_overlap_or_meet(sf, &sf->sf_blks[i], i);
  if (j == -1) {

   continue;
  }




  if (sf->sf_cur > i)
   i_d = sf->sf_cur - i;
  else
   i_d = i - sf->sf_cur;
  if (sf->sf_cur > j)
   j_d = sf->sf_cur - j;
  else
   j_d = j - sf->sf_cur;
  if (j_d > i_d) {
   sack_collapse(sf, j, i);
  } else
   sack_collapse(sf, i, j);
 }
}
