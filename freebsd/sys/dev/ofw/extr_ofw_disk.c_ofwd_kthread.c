
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ofwd_softc {int ofwd_queue_mtx; int ofwd_bio_queue; } ;
struct bio {scalar_t__ bio_cmd; int bio_length; int bio_completed; } ;
struct TYPE_2__ {int td_base_pri; } ;


 scalar_t__ BIO_GETATTR ;
 int EOPNOTSUPP ;
 int PDROP ;
 int PRIBIO ;
 struct bio* bioq_takefirst (int *) ;
 TYPE_1__* curthread ;
 int g_io_deliver (struct bio*,int) ;
 int msleep (struct ofwd_softc*,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ofwd_startio (struct ofwd_softc*,struct bio*) ;

__attribute__((used)) static void
ofwd_kthread(void *arg)
{
 struct ofwd_softc *sc;
 struct bio *bp;
 int error;

 sc = arg;
 curthread->td_base_pri = PRIBIO;

 for (;;) {
  mtx_lock(&sc->ofwd_queue_mtx);
  bp = bioq_takefirst(&sc->ofwd_bio_queue);
  if (!bp) {
   msleep(sc, &sc->ofwd_queue_mtx, PRIBIO | PDROP,
       "ofwdwait", 0);
   continue;
  }
  mtx_unlock(&sc->ofwd_queue_mtx);
  if (bp->bio_cmd == BIO_GETATTR) {
   error = EOPNOTSUPP;
  } else
   error = ofwd_startio(sc, bp);

  if (error != -1) {
   bp->bio_completed = bp->bio_length;
   g_io_deliver(bp, error);
  }
 }
}
