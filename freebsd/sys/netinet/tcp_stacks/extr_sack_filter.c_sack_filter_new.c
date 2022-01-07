
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcp_seq ;
struct sackblk {int dummy; } ;
struct sack_filter {size_t sf_cur; size_t sf_used; int sf_bits; struct sackblk* sf_blks; } ;
typedef int int32_t ;


 size_t SACK_FILTER_BLOCKS ;
 int TCP_MAX_SACK ;
 int empty_avail ;
 size_t highest_used ;
 scalar_t__ is_sack_on_board (struct sack_filter*,struct sackblk*) ;
 int memcpy (struct sackblk*,struct sackblk*,int) ;
 int over_written ;
 int sack_blk_set (struct sack_filter*,size_t) ;
 scalar_t__ sack_blk_used (struct sack_filter*,size_t) ;
 int sack_move_to_empty (struct sack_filter*,size_t) ;

__attribute__((used)) static int32_t
sack_filter_new(struct sack_filter *sf, struct sackblk *in, int numblks, tcp_seq th_ack)
{
 struct sackblk blkboard[TCP_MAX_SACK];
 int32_t num, i;




 for(i=0, num=0; i<numblks; i++) {
  if (is_sack_on_board(sf, &in[i]))
   continue;
  memcpy(&blkboard[num], &in[i], sizeof(struct sackblk));
  num++;
 }
 if (num == 0)
  return(num);
 memcpy(in, blkboard, (num * sizeof(struct sackblk)));
 numblks = num;

 for(i=(num-1); i>=0; i--) {
  if (is_sack_on_board(sf, &blkboard[i])) {
   continue;
  }

  sf->sf_cur++;
  sf->sf_cur %= SACK_FILTER_BLOCKS;
  if ((sack_blk_used(sf, sf->sf_cur)) &&
      (sf->sf_used < SACK_FILTER_BLOCKS)) {
   sack_move_to_empty(sf, sf->sf_cur);
  }

  if (sack_blk_used(sf, sf->sf_cur)) {
   over_written++;
   if (sf->sf_used < SACK_FILTER_BLOCKS)
    empty_avail++;
  }

  memcpy(&sf->sf_blks[sf->sf_cur], &in[i], sizeof(struct sackblk));
  if (sack_blk_used(sf, sf->sf_cur) == 0) {
   sf->sf_used++;

   if (sf->sf_used > highest_used)
    highest_used = sf->sf_used;

   sf->sf_bits = sack_blk_set(sf, sf->sf_cur);
  }
 }
 return(numblks);
}
