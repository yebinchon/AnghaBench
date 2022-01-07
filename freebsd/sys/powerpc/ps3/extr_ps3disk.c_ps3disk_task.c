
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3disk_softc {int sc_dmatag; int sc_deferredq; int sc_task; } ;
struct bio {int * bio_driver1; } ;
typedef int bus_dmamap_t ;


 int PRIBIO ;
 int PS3DISK_LOCK (struct ps3disk_softc*) ;
 int PS3DISK_UNLOCK (struct ps3disk_softc*) ;
 struct bio* bioq_takefirst (int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int kproc_exit (int ) ;
 int kproc_suspend_check (int ) ;
 int ps3disk_strategy (struct bio*) ;
 int tsleep (int *,int ,char*,int) ;

__attribute__((used)) static void
ps3disk_task(void *arg)
{
 struct ps3disk_softc *sc = (struct ps3disk_softc *) arg;
 struct bio *bp;


 while (1) {
  kproc_suspend_check(sc->sc_task);
  tsleep(&sc->sc_deferredq, PRIBIO, "ps3disk", 10);

  PS3DISK_LOCK(sc);
  bp = bioq_takefirst(&sc->sc_deferredq);
  PS3DISK_UNLOCK(sc);

  if (bp == ((void*)0))
   continue;

  if (bp->bio_driver1 != ((void*)0)) {
   bus_dmamap_unload(sc->sc_dmatag, (bus_dmamap_t)
       bp->bio_driver1);
   bus_dmamap_destroy(sc->sc_dmatag, (bus_dmamap_t)
       bp->bio_driver1);
  }

  ps3disk_strategy(bp);
 }

 kproc_exit(0);
}
