
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sack_filter {int sf_ack; int sf_bits; int sf_cur; int sf_used; TYPE_1__* sf_blks; } ;
struct TYPE_2__ {int start; int end; } ;
typedef int FILE ;


 int SACK_FILTER_BLOCKS ;
 int fprintf (int *,char*,int,int,int,...) ;
 scalar_t__ sack_blk_used (struct sack_filter*,int) ;

__attribute__((used)) static void
sack_filter_dump(FILE *out, struct sack_filter *sf)
{
 int i;
 fprintf(out, "	sf_ack:%u sf_bits:0x%x c:%d used:%d\n",
  sf->sf_ack, sf->sf_bits,
  sf->sf_cur, sf->sf_used);

 for(i=0; i<SACK_FILTER_BLOCKS; i++) {
  if (sack_blk_used(sf, i)) {
   fprintf(out, "Entry:%d start:%u end:%u\n", i,
          sf->sf_blks[i].start,
          sf->sf_blks[i].end);
  }
 }
}
