
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct md_s {int * pl_ptr; } ;
struct bio {int bio_offset; int bio_cmd; int bio_flags; scalar_t__ bio_resid; int bio_length; int * bio_data; int bio_ma_offset; } ;
typedef int bus_dma_segment_t ;



 int BIO_VLIST ;

 int bcopy (int *,int *,int ) ;
 int cpu_flush_dcache (int *,int ) ;
 int mdcopyfrom_vlist (int *,int ,int *,int ) ;
 int mdcopyto_vlist (int *,int *,int ,int ) ;

__attribute__((used)) static int
mdstart_preload(struct md_s *sc, struct bio *bp)
{
 uint8_t *p;

 p = sc->pl_ptr + bp->bio_offset;
 switch (bp->bio_cmd) {
 case 129:
  if ((bp->bio_flags & BIO_VLIST) != 0) {
   mdcopyto_vlist(p, (bus_dma_segment_t *)bp->bio_data,
       bp->bio_ma_offset, bp->bio_length);
  } else {
   bcopy(p, bp->bio_data, bp->bio_length);
  }
  cpu_flush_dcache(bp->bio_data, bp->bio_length);
  break;
 case 128:
  if ((bp->bio_flags & BIO_VLIST) != 0) {
   mdcopyfrom_vlist((bus_dma_segment_t *)bp->bio_data,
       bp->bio_ma_offset, p, bp->bio_length);
  } else {
   bcopy(bp->bio_data, p, bp->bio_length);
  }
  break;
 }
 bp->bio_resid = 0;
 return (0);
}
