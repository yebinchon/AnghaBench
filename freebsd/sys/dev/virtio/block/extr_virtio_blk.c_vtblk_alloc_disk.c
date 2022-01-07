
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vtblk_softc {int vtblk_flags; int vtblk_max_nsegs; int vtblk_write_cache; struct disk* vtblk_disk; int vtblk_dev; } ;
struct TYPE_4__ {int physical_block_exp; int alignment_offset; } ;
struct TYPE_3__ {int heads; int sectors; } ;
struct virtio_blk_config {int capacity; int blk_size; TYPE_2__ topology; TYPE_1__ geometry; } ;
struct disk {int d_flags; int d_mediasize; int d_sectorsize; int d_maxsize; int d_stripesize; int d_stripeoffset; int d_fwheads; int d_fwsectors; int d_dump; int d_hba_subdevice; int d_hba_subvendor; int d_hba_device; int d_hba_vendor; struct vtblk_softc* d_drv1; int d_unit; int d_name; int d_strategy; int d_ioctl; int d_close; int d_open; } ;
typedef int device_t ;


 int DISKFLAG_CANFLUSHCACHE ;
 int DISKFLAG_DIRECT_COMPLETION ;
 int DISKFLAG_UNMAPPED_BIO ;
 int PAGE_SIZE ;
 int VIRTIO_BLK_F_BLK_SIZE ;
 int VIRTIO_BLK_F_GEOMETRY ;
 int VIRTIO_BLK_F_TOPOLOGY ;
 int VTBLK_CACHE_WRITEBACK ;
 int VTBLK_CACHE_WRITETHROUGH ;
 int VTBLK_DISK_NAME ;
 int VTBLK_FLAG_READONLY ;
 int VTBLK_MIN_SEGMENTS ;
 int device_get_unit (int ) ;
 struct disk* disk_alloc () ;
 int virtio_get_device (int ) ;
 int virtio_get_subdevice (int ) ;
 int virtio_get_subvendor (int ) ;
 int virtio_get_vendor (int ) ;
 scalar_t__ virtio_with_feature (int ,int ) ;
 int vtblk_close ;
 int vtblk_dump ;
 int vtblk_ioctl ;
 int vtblk_open ;
 int vtblk_strategy ;
 scalar_t__ vtblk_write_cache_enabled (struct vtblk_softc*,struct virtio_blk_config*) ;

__attribute__((used)) static void
vtblk_alloc_disk(struct vtblk_softc *sc, struct virtio_blk_config *blkcfg)
{
 device_t dev;
 struct disk *dp;

 dev = sc->vtblk_dev;

 sc->vtblk_disk = dp = disk_alloc();
 dp->d_open = vtblk_open;
 dp->d_close = vtblk_close;
 dp->d_ioctl = vtblk_ioctl;
 dp->d_strategy = vtblk_strategy;
 dp->d_name = VTBLK_DISK_NAME;
 dp->d_unit = device_get_unit(dev);
 dp->d_drv1 = sc;
 dp->d_flags = DISKFLAG_CANFLUSHCACHE | DISKFLAG_UNMAPPED_BIO |
     DISKFLAG_DIRECT_COMPLETION;
 dp->d_hba_vendor = virtio_get_vendor(dev);
 dp->d_hba_device = virtio_get_device(dev);
 dp->d_hba_subvendor = virtio_get_subvendor(dev);
 dp->d_hba_subdevice = virtio_get_subdevice(dev);

 if ((sc->vtblk_flags & VTBLK_FLAG_READONLY) == 0)
  dp->d_dump = vtblk_dump;


 dp->d_mediasize = blkcfg->capacity * 512;

 if (virtio_with_feature(dev, VIRTIO_BLK_F_BLK_SIZE))
  dp->d_sectorsize = blkcfg->blk_size;
 else
  dp->d_sectorsize = 512;
 dp->d_maxsize = (sc->vtblk_max_nsegs - VTBLK_MIN_SEGMENTS - 1) *
     PAGE_SIZE;
 if (dp->d_maxsize < PAGE_SIZE)
  dp->d_maxsize = PAGE_SIZE;

 if (virtio_with_feature(dev, VIRTIO_BLK_F_GEOMETRY)) {
  dp->d_fwsectors = blkcfg->geometry.sectors;
  dp->d_fwheads = blkcfg->geometry.heads;
 }

 if (virtio_with_feature(dev, VIRTIO_BLK_F_TOPOLOGY) &&
     blkcfg->topology.physical_block_exp > 0) {
  dp->d_stripesize = dp->d_sectorsize *
      (1 << blkcfg->topology.physical_block_exp);
  dp->d_stripeoffset = (dp->d_stripesize -
      blkcfg->topology.alignment_offset * dp->d_sectorsize) %
      dp->d_stripesize;
 }

 if (vtblk_write_cache_enabled(sc, blkcfg) != 0)
  sc->vtblk_write_cache = VTBLK_CACHE_WRITEBACK;
 else
  sc->vtblk_write_cache = VTBLK_CACHE_WRITETHROUGH;
}
