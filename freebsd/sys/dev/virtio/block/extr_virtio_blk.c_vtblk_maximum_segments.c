
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_flags; int vtblk_dev; } ;
struct virtio_blk_config {int seg_max; } ;
typedef int device_t ;


 int MAXPHYS ;
 int MIN (int,int) ;
 int PAGE_SIZE ;
 int VIRTIO_BLK_F_SEG_MAX ;
 int VIRTIO_MAX_INDIRECT ;
 int VTBLK_FLAG_INDIRECT ;
 int VTBLK_MIN_SEGMENTS ;
 scalar_t__ virtio_with_feature (int ,int ) ;

__attribute__((used)) static int
vtblk_maximum_segments(struct vtblk_softc *sc,
    struct virtio_blk_config *blkcfg)
{
 device_t dev;
 int nsegs;

 dev = sc->vtblk_dev;
 nsegs = VTBLK_MIN_SEGMENTS;

 if (virtio_with_feature(dev, VIRTIO_BLK_F_SEG_MAX)) {
  nsegs += MIN(blkcfg->seg_max, MAXPHYS / PAGE_SIZE + 1);
  if (sc->vtblk_flags & VTBLK_FLAG_INDIRECT)
   nsegs = MIN(nsegs, VIRTIO_MAX_INDIRECT);
 } else
  nsegs += 1;

 return (nsegs);
}
