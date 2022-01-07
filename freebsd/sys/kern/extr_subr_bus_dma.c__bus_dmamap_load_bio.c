
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bio_flags; int bio_bcount; scalar_t__ bio_data; int bio_ma_offset; int bio_ma; int bio_ma_n; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef int bus_dma_segment_t ;


 int BIO_UNMAPPED ;
 int BIO_VLIST ;
 int _bus_dmamap_load_buffer (int ,int ,scalar_t__,int ,int ,int,int *,int*) ;
 int _bus_dmamap_load_ma (int ,int ,int ,int ,int ,int,int *,int*) ;
 int _bus_dmamap_load_vlist (int ,int ,int *,int ,int ,int*,int,int ,int ) ;
 int kernel_pmap ;

__attribute__((used)) static int
_bus_dmamap_load_bio(bus_dma_tag_t dmat, bus_dmamap_t map, struct bio *bio,
    int *nsegs, int flags)
{

 if ((bio->bio_flags & BIO_VLIST) != 0) {
  bus_dma_segment_t *segs = (bus_dma_segment_t *)bio->bio_data;
  return (_bus_dmamap_load_vlist(dmat, map, segs, bio->bio_ma_n,
      kernel_pmap, nsegs, flags, bio->bio_ma_offset,
      bio->bio_bcount));
 }

 if ((bio->bio_flags & BIO_UNMAPPED) != 0)
  return (_bus_dmamap_load_ma(dmat, map, bio->bio_ma,
      bio->bio_bcount, bio->bio_ma_offset, flags, ((void*)0), nsegs));

 return (_bus_dmamap_load_buffer(dmat, map, bio->bio_data,
     bio->bio_bcount, kernel_pmap, flags, ((void*)0), nsegs));
}
