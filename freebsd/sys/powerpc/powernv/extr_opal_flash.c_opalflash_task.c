
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opalflash_softc {int sc_bio_queue; int sc_mtx; int sc_dev; } ;
struct bio {int bio_cmd; int bio_error; int bio_bcount; int bio_data; int bio_offset; } ;
typedef int device_t ;





 int EINVAL ;
 int OPALFLASH_LOCK (struct opalflash_softc*) ;
 int OPALFLASH_UNLOCK (struct opalflash_softc*) ;
 int PRIBIO ;
 int biodone (struct bio*) ;
 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 int msleep (struct opalflash_softc*,int *,int ,char*,int ) ;
 int opalflash_erase (struct opalflash_softc*,int ,int ) ;
 int opalflash_read (struct opalflash_softc*,int ,int ,int ) ;
 int opalflash_write (struct opalflash_softc*,int ,int ,int ) ;

__attribute__((used)) static void
opalflash_task(void *arg)
{
 struct opalflash_softc *sc;
 struct bio *bp;
 device_t dev;

 sc = arg;

 for (;;) {
  dev = sc->sc_dev;
  OPALFLASH_LOCK(sc);
  do {
   bp = bioq_first(&sc->sc_bio_queue);
   if (bp == ((void*)0))
    msleep(sc, &sc->sc_mtx, PRIBIO, "opalflash", 0);
  } while (bp == ((void*)0));
  bioq_remove(&sc->sc_bio_queue, bp);
  OPALFLASH_UNLOCK(sc);

  switch (bp->bio_cmd) {
  case 130:
   bp->bio_error = opalflash_erase(sc, bp->bio_offset,
       bp->bio_bcount);
   break;
  case 129:
   bp->bio_error = opalflash_read(sc, bp->bio_offset,
       bp->bio_data, bp->bio_bcount);
   break;
  case 128:
   bp->bio_error = opalflash_write(sc, bp->bio_offset,
       bp->bio_data, bp->bio_bcount);
   break;
  default:
   bp->bio_error = EINVAL;
  }
  biodone(bp);
 }
}
