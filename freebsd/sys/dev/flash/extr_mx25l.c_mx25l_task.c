
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mx25l_softc {scalar_t__ sc_taskstate; int sc_bio_queue; int sc_mtx; int sc_dev; } ;
struct bio {int bio_cmd; int bio_error; int bio_bcount; int bio_data; int bio_offset; } ;
typedef int device_t ;




 int EINVAL ;
 int M25PXX_LOCK (struct mx25l_softc*) ;
 int M25PXX_UNLOCK (struct mx25l_softc*) ;
 int PRIBIO ;
 scalar_t__ TSTATE_STOPPED ;
 scalar_t__ TSTATE_STOPPING ;
 int biodone (struct bio*) ;
 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 int kproc_exit (int ) ;
 int msleep (struct mx25l_softc*,int *,int ,char*,int ) ;
 int mx25l_read (struct mx25l_softc*,int ,int ,int ) ;
 int mx25l_write (struct mx25l_softc*,int ,int ,int ) ;
 int wakeup (struct mx25l_softc*) ;

__attribute__((used)) static void
mx25l_task(void *arg)
{
 struct mx25l_softc *sc = (struct mx25l_softc*)arg;
 struct bio *bp;
 device_t dev;

 for (;;) {
  dev = sc->sc_dev;
  M25PXX_LOCK(sc);
  do {
   if (sc->sc_taskstate == TSTATE_STOPPING) {
    sc->sc_taskstate = TSTATE_STOPPED;
    M25PXX_UNLOCK(sc);
    wakeup(sc);
    kproc_exit(0);
   }
   bp = bioq_first(&sc->sc_bio_queue);
   if (bp == ((void*)0))
    msleep(sc, &sc->sc_mtx, PRIBIO, "mx25jq", 0);
  } while (bp == ((void*)0));
  bioq_remove(&sc->sc_bio_queue, bp);
  M25PXX_UNLOCK(sc);

  switch (bp->bio_cmd) {
  case 129:
   bp->bio_error = mx25l_read(sc, bp->bio_offset,
       bp->bio_data, bp->bio_bcount);
   break;
  case 128:
   bp->bio_error = mx25l_write(sc, bp->bio_offset,
       bp->bio_data, bp->bio_bcount);
   break;
  default:
   bp->bio_error = EINVAL;
  }


  biodone(bp);
 }
}
