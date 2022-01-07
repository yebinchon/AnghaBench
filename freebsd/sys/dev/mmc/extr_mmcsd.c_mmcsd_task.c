
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmcsd_softc {int log_count; int log_time; int rca; int mmcbus; int dev; } ;
struct mmcsd_part {scalar_t__ running; scalar_t__ eend; scalar_t__ eblock; int type; TYPE_1__* disk; scalar_t__ ro; int disk_mtx; int bio_queue; struct mmcsd_softc* sc; } ;
struct bio {scalar_t__ bio_cmd; int bio_resid; int bio_bcount; scalar_t__ bio_pblkno; int bio_flags; void* bio_error; } ;
typedef int device_t ;
typedef scalar_t__ daddr_t ;
struct TYPE_2__ {int d_sectorsize; } ;


 scalar_t__ BIO_DELETE ;
 int BIO_ERROR ;
 scalar_t__ BIO_FLUSH ;
 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 void* EIO ;
 void* EROFS ;
 int LOG_PPS ;
 int MMCBUS_ACQUIRE_BUS (int ,int ) ;
 int MMCBUS_RELEASE_BUS (int ,int ) ;
 int MMCSD_DISK_LOCK (struct mmcsd_part*) ;
 int MMCSD_DISK_UNLOCK (struct mmcsd_part*) ;
 int MMC_ERR_NONE ;
 int PRIBIO ;
 scalar_t__ __predict_false (int) ;
 int biodone (struct bio*) ;
 struct bio* bioq_takefirst (int *) ;
 int device_printf (int ,char*) ;
 int kproc_exit (int ) ;
 scalar_t__ mmcsd_delete (struct mmcsd_part*,struct bio*) ;
 int mmcsd_flush_cache (struct mmcsd_softc*) ;
 scalar_t__ mmcsd_rw (struct mmcsd_part*,struct bio*) ;
 int mmcsd_switch_part (int ,int ,int ,int ) ;
 int msleep (struct mmcsd_part*,int *,int ,char*,int ) ;
 scalar_t__ ppsratecheck (int *,int *,int ) ;
 int wakeup (struct mmcsd_part*) ;

__attribute__((used)) static void
mmcsd_task(void *arg)
{
 daddr_t block, end;
 struct mmcsd_part *part;
 struct mmcsd_softc *sc;
 struct bio *bp;
 device_t dev, mmcbus;
 int err, sz;

 part = arg;
 sc = part->sc;
 dev = sc->dev;
 mmcbus = sc->mmcbus;

 while (1) {
  MMCSD_DISK_LOCK(part);
  do {
   if (part->running == 0)
    goto out;
   bp = bioq_takefirst(&part->bio_queue);
   if (bp == ((void*)0))
    msleep(part, &part->disk_mtx, PRIBIO,
        "mmcsd disk jobqueue", 0);
  } while (bp == ((void*)0));
  MMCSD_DISK_UNLOCK(part);
  if (__predict_false(bp->bio_cmd == BIO_FLUSH)) {
   if (mmcsd_flush_cache(sc) != MMC_ERR_NONE) {
    bp->bio_error = EIO;
    bp->bio_flags |= BIO_ERROR;
   }
   biodone(bp);
   continue;
  }
  if (bp->bio_cmd != BIO_READ && part->ro) {
   bp->bio_error = EROFS;
   bp->bio_resid = bp->bio_bcount;
   bp->bio_flags |= BIO_ERROR;
   biodone(bp);
   continue;
  }
  MMCBUS_ACQUIRE_BUS(mmcbus, dev);
  sz = part->disk->d_sectorsize;
  block = bp->bio_pblkno;
  end = bp->bio_pblkno + (bp->bio_bcount / sz);
  err = mmcsd_switch_part(mmcbus, dev, sc->rca, part->type);
  if (err != MMC_ERR_NONE) {
   if (ppsratecheck(&sc->log_time, &sc->log_count,
       LOG_PPS))
    device_printf(dev, "Partition switch error\n");
   goto release;
  }
  if (bp->bio_cmd == BIO_READ || bp->bio_cmd == BIO_WRITE) {

   if (block < part->eend && end > part->eblock)
    part->eblock = part->eend = 0;
   block = mmcsd_rw(part, bp);
  } else if (bp->bio_cmd == BIO_DELETE) {
   block = mmcsd_delete(part, bp);
  }
release:
  MMCBUS_RELEASE_BUS(mmcbus, dev);
  if (block < end) {
   bp->bio_error = EIO;
   bp->bio_resid = (end - block) * sz;
   bp->bio_flags |= BIO_ERROR;
  } else {
   bp->bio_resid = 0;
  }
  biodone(bp);
 }
out:

 part->running = -1;
 MMCSD_DISK_UNLOCK(part);
 wakeup(part);

 kproc_exit(0);
}
