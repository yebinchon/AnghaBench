
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sackblk {int dummy; } ;
struct sack_filter {int sf_bits; int * sf_blks; } ;
typedef int int32_t ;


 int SACK_FILTER_BLOCKS ;
 int memcpy (int *,int *,int) ;
 int sack_blk_clr (struct sack_filter*,int) ;
 int sack_blk_set (struct sack_filter*,int) ;
 scalar_t__ sack_blk_used (struct sack_filter*,int) ;

__attribute__((used)) static void
sack_move_to_empty(struct sack_filter *sf, uint32_t idx)
{
 int32_t i, cnt;

 i = (idx + 1) % SACK_FILTER_BLOCKS;
 for (cnt=0; cnt <(SACK_FILTER_BLOCKS-1); cnt++) {
  if (sack_blk_used(sf, i) == 0) {
   memcpy(&sf->sf_blks[i], &sf->sf_blks[idx], sizeof(struct sackblk));
   sf->sf_bits = sack_blk_clr(sf, idx);
   sf->sf_bits = sack_blk_set(sf, i);
   return;
  }
  i++;
  i %= SACK_FILTER_BLOCKS;
 }
}
