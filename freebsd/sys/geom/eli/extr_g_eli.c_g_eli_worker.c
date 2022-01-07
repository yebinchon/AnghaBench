
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct g_eli_worker {int w_number; scalar_t__ w_active; struct g_eli_softc* w_softc; } ;
struct g_eli_softc {int sc_flags; scalar_t__ sc_inflight; int sc_queue_mtx; int sc_workers; scalar_t__ sc_cpubind; } ;
struct bio {scalar_t__ bio_pflags; scalar_t__ bio_cmd; } ;
struct TYPE_8__ {TYPE_1__* td_proc; } ;
struct TYPE_7__ {scalar_t__ p_comm; } ;


 scalar_t__ BIO_READ ;
 scalar_t__ FALSE ;
 int G_ELI_DEBUG (int,char*,scalar_t__) ;
 int G_ELI_FLAG_AUTH ;
 int G_ELI_FLAG_DESTROY ;
 int G_ELI_FLAG_SUSPEND ;
 scalar_t__ G_ELI_NEW_BIO ;
 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct g_eli_worker*,int ) ;
 int MPASS (int) ;
 int M_ELI ;
 int PDROP ;
 int PRIBIO ;
 int PUSER ;
 scalar_t__ TRUE ;
 int atomic_add_int (scalar_t__*,int) ;
 TYPE_2__* curthread ;
 int free (struct g_eli_worker*,int ) ;
 int g_eli_auth_read (struct g_eli_softc*,struct bio*) ;
 int g_eli_auth_run (struct g_eli_worker*,struct bio*) ;
 int g_eli_cancel (struct g_eli_softc*) ;
 int g_eli_crypto_read (struct g_eli_softc*,struct bio*,int) ;
 int g_eli_crypto_run (struct g_eli_worker*,struct bio*) ;
 int g_eli_freesession (struct g_eli_worker*) ;
 int g_eli_newsession (struct g_eli_worker*) ;
 struct bio* g_eli_takefirst (struct g_eli_softc*) ;
 int hz ;
 int kproc_exit (int ) ;
 int mp_ncpus ;
 int msleep (struct g_eli_softc*,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sched_bind (TYPE_2__*,int) ;
 int sched_prio (TYPE_2__*,int ) ;
 scalar_t__ smp_started ;
 int thread_lock (TYPE_2__*) ;
 int thread_unlock (TYPE_2__*) ;
 int tsleep (struct g_eli_worker*,int ,char*,int) ;
 int w_next ;
 int wakeup (int *) ;

__attribute__((used)) static void
g_eli_worker(void *arg)
{
 struct g_eli_softc *sc;
 struct g_eli_worker *wr;
 struct bio *bp;
 int error;

 wr = arg;
 sc = wr->w_softc;
 thread_lock(curthread);
 sched_prio(curthread, PUSER);
 if (sc->sc_cpubind)
  sched_bind(curthread, wr->w_number % mp_ncpus);
 thread_unlock(curthread);

 G_ELI_DEBUG(1, "Thread %s started.", curthread->td_proc->p_comm);

 for (;;) {
  mtx_lock(&sc->sc_queue_mtx);
again:
  bp = g_eli_takefirst(sc);
  if (bp == ((void*)0)) {
   if (sc->sc_flags & G_ELI_FLAG_DESTROY) {
    g_eli_cancel(sc);
    LIST_REMOVE(wr, w_next);
    g_eli_freesession(wr);
    free(wr, M_ELI);
    G_ELI_DEBUG(1, "Thread %s exiting.",
        curthread->td_proc->p_comm);
    wakeup(&sc->sc_workers);
    mtx_unlock(&sc->sc_queue_mtx);
    kproc_exit(0);
   }
   while (sc->sc_flags & G_ELI_FLAG_SUSPEND) {
    if (sc->sc_inflight > 0) {
     G_ELI_DEBUG(0, "inflight=%d",
         sc->sc_inflight);




     msleep(sc, &sc->sc_queue_mtx, PRIBIO,
         "geli:inf", hz / 5);
     goto again;
    }




    if (wr->w_active) {
     g_eli_freesession(wr);
     wr->w_active = FALSE;
    }
    wakeup(&sc->sc_workers);
    msleep(sc, &sc->sc_queue_mtx, PRIBIO,
        "geli:suspend", 0);
    if (!wr->w_active &&
        !(sc->sc_flags & G_ELI_FLAG_SUSPEND)) {
     error = g_eli_newsession(wr);
     KASSERT(error == 0,
         ("g_eli_newsession() failed on resume (error=%d)",
         error));
     wr->w_active = TRUE;
    }
    goto again;
   }
   msleep(sc, &sc->sc_queue_mtx, PDROP, "geli:w", 0);
   continue;
  }
  if (bp->bio_pflags == G_ELI_NEW_BIO)
   atomic_add_int(&sc->sc_inflight, 1);
  mtx_unlock(&sc->sc_queue_mtx);
  if (bp->bio_pflags == G_ELI_NEW_BIO) {
   bp->bio_pflags = 0;
   if (sc->sc_flags & G_ELI_FLAG_AUTH) {
    if (bp->bio_cmd == BIO_READ)
     g_eli_auth_read(sc, bp);
    else
     g_eli_auth_run(wr, bp);
   } else {
    if (bp->bio_cmd == BIO_READ)
     g_eli_crypto_read(sc, bp, 1);
    else
     g_eli_crypto_run(wr, bp);
   }
  } else {
   if (sc->sc_flags & G_ELI_FLAG_AUTH)
    g_eli_auth_run(wr, bp);
   else
    g_eli_crypto_run(wr, bp);
  }
 }
}
