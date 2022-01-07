
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct md_s {scalar_t__ type; int flags; int fwsectors; int fwheads; char* ident; int (* start ) (struct md_s*,struct bio*) ;int devstat; int queue_mtx; int bio_queue; } ;
struct bio {scalar_t__ bio_cmd; int bio_length; int bio_completed; int bio_bcount; int bio_resid; } ;
struct TYPE_5__ {int td_pflags; } ;


 scalar_t__ BIO_GETATTR ;
 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 int EOPNOTSUPP ;
 int MD_EXITING ;
 int MD_SHUTDOWN ;
 int MD_VERIFY ;
 scalar_t__ MD_VNODE ;
 int PDROP ;
 int PRIBIO ;
 int TDP_NORUNNINGBUF ;
 struct bio* bioq_takefirst (int *) ;
 TYPE_1__* curthread ;
 int devstat_end_transaction_bio (int ,struct bio*) ;
 scalar_t__ g_handleattr_int (struct bio*,char*,int) ;
 scalar_t__ g_handleattr_str (struct bio*,char*,char*) ;
 int g_io_deliver (struct bio*,int) ;
 int kproc_exit (int ) ;
 int msleep (struct md_s*,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sched_prio (TYPE_1__*,int) ;
 int stub1 (struct md_s*,struct bio*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;

__attribute__((used)) static void
md_kthread(void *arg)
{
 struct md_s *sc;
 struct bio *bp;
 int error;

 sc = arg;
 thread_lock(curthread);
 sched_prio(curthread, PRIBIO);
 thread_unlock(curthread);
 if (sc->type == MD_VNODE)
  curthread->td_pflags |= TDP_NORUNNINGBUF;

 for (;;) {
  mtx_lock(&sc->queue_mtx);
  if (sc->flags & MD_SHUTDOWN) {
   sc->flags |= MD_EXITING;
   mtx_unlock(&sc->queue_mtx);
   kproc_exit(0);
  }
  bp = bioq_takefirst(&sc->bio_queue);
  if (!bp) {
   msleep(sc, &sc->queue_mtx, PRIBIO | PDROP, "mdwait", 0);
   continue;
  }
  mtx_unlock(&sc->queue_mtx);
  if (bp->bio_cmd == BIO_GETATTR) {
   int isv = ((sc->flags & MD_VERIFY) != 0);

   if ((sc->fwsectors && sc->fwheads &&
       (g_handleattr_int(bp, "GEOM::fwsectors",
       sc->fwsectors) ||
       g_handleattr_int(bp, "GEOM::fwheads",
       sc->fwheads))) ||
       g_handleattr_int(bp, "GEOM::candelete", 1))
    error = -1;
   else if (sc->ident[0] != '\0' &&
       g_handleattr_str(bp, "GEOM::ident", sc->ident))
    error = -1;
   else if (g_handleattr_int(bp, "MNT::verified", isv))
    error = -1;
   else
    error = EOPNOTSUPP;
  } else {
   error = sc->start(sc, bp);
  }

  if (bp->bio_cmd == BIO_READ || bp->bio_cmd == BIO_WRITE) {







   bp->bio_bcount = bp->bio_length;
   bp->bio_resid = (error == -1 ? bp->bio_bcount : 0);
   devstat_end_transaction_bio(sc->devstat, bp);
  }
  if (error != -1) {
   bp->bio_completed = bp->bio_length;
   g_io_deliver(bp, error);
  }
 }
}
