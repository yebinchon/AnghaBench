
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct mmcsd_softc {int log_count; int log_time; int rca; int mmcbus; int dev; } ;
struct mmcsd_part {int type; struct mmcsd_softc* sc; } ;
struct disk {int d_sectorsize; struct mmcsd_part* d_drv1; } ;
struct bio {int bio_pblkno; size_t bio_bcount; int bio_cmd; void* bio_data; struct disk* bio_disk; } ;
typedef int off_t ;
typedef int device_t ;
typedef int daddr_t ;


 int BIO_WRITE ;
 int EIO ;
 int LOG_PPS ;
 int MMCBUS_ACQUIRE_BUS (int ,int ) ;
 int MMCBUS_RELEASE_BUS (int ,int ) ;
 int MMC_ERR_NONE ;
 int device_printf (int ,char*) ;
 int g_reset_bio (struct bio*) ;
 int mmcsd_flush_cache (struct mmcsd_softc*) ;
 int mmcsd_rw (struct mmcsd_part*,struct bio*) ;
 int mmcsd_switch_part (int ,int ,int ,int ) ;
 scalar_t__ ppsratecheck (int *,int *,int ) ;

__attribute__((used)) static int
mmcsd_dump(void *arg, void *virtual, vm_offset_t physical, off_t offset,
    size_t length)
{
 struct bio bp;
 daddr_t block, end;
 struct disk *disk;
 struct mmcsd_softc *sc;
 struct mmcsd_part *part;
 device_t dev, mmcbus;
 int err;

 disk = arg;
 part = disk->d_drv1;
 sc = part->sc;


 if (length == 0) {
  err = mmcsd_flush_cache(sc);
  if (err != MMC_ERR_NONE)
   return (EIO);
  return (0);
 }

 dev = sc->dev;
 mmcbus = sc->mmcbus;

 g_reset_bio(&bp);
 bp.bio_disk = disk;
 bp.bio_pblkno = offset / disk->d_sectorsize;
 bp.bio_bcount = length;
 bp.bio_data = virtual;
 bp.bio_cmd = BIO_WRITE;
 end = bp.bio_pblkno + bp.bio_bcount / disk->d_sectorsize;
 MMCBUS_ACQUIRE_BUS(mmcbus, dev);
 err = mmcsd_switch_part(mmcbus, dev, sc->rca, part->type);
 if (err != MMC_ERR_NONE) {
  if (ppsratecheck(&sc->log_time, &sc->log_count, LOG_PPS))
   device_printf(dev, "Partition switch error\n");
  MMCBUS_RELEASE_BUS(mmcbus, dev);
  return (EIO);
 }
 block = mmcsd_rw(part, &bp);
 MMCBUS_RELEASE_BUS(mmcbus, dev);
 return ((end < block) ? EIO : 0);
}
