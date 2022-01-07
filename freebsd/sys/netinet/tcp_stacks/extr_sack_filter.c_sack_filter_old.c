
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sackblk {int dummy; } ;
struct sack_filter {int dummy; } ;
typedef int int32_t ;


 int TCP_MAX_SACK ;
 int cnt_skipped_oldsack ;
 int cnt_used_oldsack ;
 scalar_t__ is_sack_on_board (struct sack_filter*,struct sackblk*) ;
 int memcpy (struct sackblk*,struct sackblk*,int) ;

__attribute__((used)) static int32_t
sack_filter_old(struct sack_filter *sf, struct sackblk *in, int numblks)
{
 int32_t num, i;
 struct sackblk blkboard[TCP_MAX_SACK];
 for( i = 0, num = 0; i<numblks; i++ ) {
  if (is_sack_on_board(sf, &in[i])) {

   cnt_skipped_oldsack++;

   continue;
  }




  memcpy(&blkboard[num], &in[i], sizeof(struct sackblk));

  cnt_used_oldsack++;

  num++;
 }
 if (num) {
  memcpy(in, blkboard, (num * sizeof(struct sackblk)));
 }
 return (num);
}
