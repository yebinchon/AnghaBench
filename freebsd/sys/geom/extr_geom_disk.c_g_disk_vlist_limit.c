
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {int dummy; } ;
struct bio {int bio_ma_n; scalar_t__ bio_length; scalar_t__ bio_ma_offset; scalar_t__ bio_data; } ;
typedef scalar_t__ off_t ;
typedef int bus_dma_segment_t ;


 int KASSERT (int,char*) ;
 int g_disk_maxsegs (struct disk*,struct bio*) ;
 int g_disk_seg_limit (int *,scalar_t__*,scalar_t__*,int*) ;

__attribute__((used)) static off_t
g_disk_vlist_limit(struct disk *dp, struct bio *bp, bus_dma_segment_t **pendseg)
{
 bus_dma_segment_t *seg, *end;
 off_t residual;
 off_t offset;
 int pages;

 seg = (bus_dma_segment_t *)bp->bio_data;
 end = (bus_dma_segment_t *)bp->bio_data + bp->bio_ma_n;
 residual = bp->bio_length;
 offset = bp->bio_ma_offset;
 pages = g_disk_maxsegs(dp, bp);
 while (residual != 0 && pages != 0) {
  KASSERT((seg != end),
      ("vlist limit runs off the end"));
  g_disk_seg_limit(seg, &offset, &residual, &pages);
  seg++;
 }
 if (pendseg != ((void*)0))
  *pendseg = seg;
 return (residual);
}
