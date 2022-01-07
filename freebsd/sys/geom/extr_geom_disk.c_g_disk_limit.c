
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {int dummy; } ;
struct bio {scalar_t__ bio_length; int bio_flags; int bio_ma_n; scalar_t__ bio_ma_offset; scalar_t__ bio_data; } ;
typedef scalar_t__ off_t ;
typedef int bus_dma_segment_t ;


 int BIO_UNMAPPED ;
 int BIO_VLIST ;
 int PAGE_SIZE ;
 scalar_t__ g_disk_maxsize (struct disk*,struct bio*) ;
 scalar_t__ g_disk_vlist_limit (struct disk*,struct bio*,int **) ;
 int howmany (scalar_t__,int ) ;

__attribute__((used)) static bool
g_disk_limit(struct disk *dp, struct bio *bp)
{
 bool limited = 0;
 off_t maxsz;

 maxsz = g_disk_maxsize(dp, bp);







 if (bp->bio_length > maxsz) {
  bp->bio_length = maxsz;
  limited = 1;
 }

 if ((bp->bio_flags & BIO_VLIST) != 0) {
  bus_dma_segment_t *firstseg, *endseg;
  off_t residual;

  firstseg = (bus_dma_segment_t*)bp->bio_data;
  residual = g_disk_vlist_limit(dp, bp, &endseg);
  if (residual != 0) {
   bp->bio_ma_n = endseg - firstseg;
   bp->bio_length -= residual;
   limited = 1;
  }
 } else if ((bp->bio_flags & BIO_UNMAPPED) != 0) {
  bp->bio_ma_n =
      howmany(bp->bio_ma_offset + bp->bio_length, PAGE_SIZE);
 }

 return (limited);
}
