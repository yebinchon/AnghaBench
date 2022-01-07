
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_uzip_softc {int wrkthr_flags; int (* uzip_do ) (struct g_uzip_softc*,struct bio*) ;int queue_mtx; int bio_queue; } ;
struct bio {int dummy; } ;


 int GUZ_EXITING ;
 int GUZ_SHUTDOWN ;
 int PDROP ;
 int PRIBIO ;
 struct bio* bioq_takefirst (int *) ;
 int curthread ;
 int kproc_exit (int ) ;
 int msleep (struct g_uzip_softc*,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sched_prio (int ,int) ;
 int stub1 (struct g_uzip_softc*,struct bio*) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

void
g_uzip_wrkthr(void *arg)
{
 struct g_uzip_softc *sc;
 struct bio *bp;

 sc = (struct g_uzip_softc *)arg;
 thread_lock(curthread);
 sched_prio(curthread, PRIBIO);
 thread_unlock(curthread);

 for (;;) {
  mtx_lock(&sc->queue_mtx);
  if (sc->wrkthr_flags & GUZ_SHUTDOWN) {
   sc->wrkthr_flags |= GUZ_EXITING;
   mtx_unlock(&sc->queue_mtx);
   kproc_exit(0);
  }
  bp = bioq_takefirst(&sc->bio_queue);
  if (!bp) {
   msleep(sc, &sc->queue_mtx, PRIBIO | PDROP,
       "wrkwait", 0);
   continue;
  }
  mtx_unlock(&sc->queue_mtx);
  sc->uzip_do(sc, bp);
 }
}
