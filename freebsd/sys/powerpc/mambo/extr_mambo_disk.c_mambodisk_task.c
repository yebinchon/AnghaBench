
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct mambodisk_softc {int running; int maxblocks; TYPE_1__* disk; int bio_queue; int sc_mtx; int dev; } ;
struct bio {scalar_t__ bio_pblkno; size_t bio_bcount; char* bio_data; scalar_t__ bio_cmd; int bio_flags; scalar_t__ bio_resid; int bio_error; } ;
typedef int device_t ;
typedef scalar_t__ daddr_t ;
struct TYPE_2__ {size_t d_sectorsize; } ;


 int BIO_ERROR ;
 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 int EIO ;
 int MAMBO_DISK_READ ;
 int MAMBO_DISK_WRITE ;
 int MBODISK_LOCK (struct mambodisk_softc*) ;
 int MBODISK_UNLOCK (struct mambodisk_softc*) ;
 int PRIBIO ;
 int biodone (struct bio*) ;
 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 int device_get_unit (int ) ;
 int kproc_exit (int ) ;
 int mambocall (int ,char*,int,int) ;
 int msleep (struct mambodisk_softc*,int *,int ,char*,int ) ;
 int wakeup (struct mambodisk_softc*) ;

__attribute__((used)) static void
mambodisk_task(void *arg)
{
 struct mambodisk_softc *sc = (struct mambodisk_softc*)arg;
 struct bio *bp;
 size_t sz;
 int result;
 daddr_t block, end;
 device_t dev;
 u_long unit;

 dev = sc->dev;
 unit = device_get_unit(dev);

 while (sc->running) {
  MBODISK_LOCK(sc);
  do {
   bp = bioq_first(&sc->bio_queue);
   if (bp == ((void*)0))
    msleep(sc, &sc->sc_mtx, PRIBIO, "jobqueue", 0);
  } while (bp == ((void*)0) && sc->running);
  if (bp)
   bioq_remove(&sc->bio_queue, bp);
  MBODISK_UNLOCK(sc);
  if (!sc->running)
   break;
  sz = sc->disk->d_sectorsize;
  end = bp->bio_pblkno + (bp->bio_bcount / sz);
  for (block = bp->bio_pblkno; block < end;) {
   u_long numblocks;
   char *vaddr = bp->bio_data +
       (block - bp->bio_pblkno) * sz;

   numblocks = end - block;
   if (numblocks > sc->maxblocks)
    numblocks = sc->maxblocks;

   if (bp->bio_cmd == BIO_READ) {
    result = mambocall(MAMBO_DISK_READ, vaddr,
      (u_long)block, (numblocks << 16) | unit);
   } else if (bp->bio_cmd == BIO_WRITE) {
    result = mambocall(MAMBO_DISK_WRITE, vaddr,
      (u_long)block, (numblocks << 16) | unit);
   } else {
    result = 1;
   }

   if (result)
    break;

   block += numblocks;
  }
  if (block < end) {
   bp->bio_error = EIO;
   bp->bio_resid = (end - block) * sz;
   bp->bio_flags |= BIO_ERROR;
  }
  biodone(bp);
 }


 MBODISK_LOCK(sc);
 sc->running = -1;
 wakeup(sc);
 MBODISK_UNLOCK(sc);

 kproc_exit(0);
}
