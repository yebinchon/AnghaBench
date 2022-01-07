
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n25q_softc {scalar_t__ sc_taskstate; int sc_bio_queue; int sc_mtx; int dev; } ;
struct bio {int bio_cmd; int bio_error; int bio_bcount; int bio_data; int bio_offset; } ;
typedef int device_t ;




 int EINVAL ;
 int N25Q_LOCK (struct n25q_softc*) ;
 int N25Q_UNLOCK (struct n25q_softc*) ;
 int PRIBIO ;
 scalar_t__ TSTATE_STOPPED ;
 scalar_t__ TSTATE_STOPPING ;
 int biodone (struct bio*) ;
 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 int hz ;
 int kproc_exit (int ) ;
 int msleep (struct n25q_softc*,int *,int ,char*,int ) ;
 int n25q_read (int ,struct bio*,int ,int ,int ) ;
 int n25q_write (int ,struct bio*,int ,int ,int ) ;
 int wakeup (struct n25q_softc*) ;

__attribute__((used)) static void
n25q_task(void *arg)
{
 struct n25q_softc *sc;
 struct bio *bp;
 device_t dev;

 sc = (struct n25q_softc *)arg;

 dev = sc->dev;

 for (;;) {
  N25Q_LOCK(sc);
  do {
   if (sc->sc_taskstate == TSTATE_STOPPING) {
    sc->sc_taskstate = TSTATE_STOPPED;
    N25Q_UNLOCK(sc);
    wakeup(sc);
    kproc_exit(0);
   }
   bp = bioq_first(&sc->sc_bio_queue);
   if (bp == ((void*)0))
    msleep(sc, &sc->sc_mtx, PRIBIO, "jobqueue", hz);
  } while (bp == ((void*)0));
  bioq_remove(&sc->sc_bio_queue, bp);
  N25Q_UNLOCK(sc);

  switch (bp->bio_cmd) {
  case 129:
   bp->bio_error = n25q_read(dev, bp, bp->bio_offset,
       bp->bio_data, bp->bio_bcount);
   break;
  case 128:
   bp->bio_error = n25q_write(dev, bp, bp->bio_offset,
       bp->bio_data, bp->bio_bcount);
   break;
  default:
   bp->bio_error = EINVAL;
  }

  biodone(bp);
 }
}
