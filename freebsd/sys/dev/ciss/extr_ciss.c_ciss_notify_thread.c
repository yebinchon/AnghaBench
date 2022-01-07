
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int ciss_flags; int ciss_mtx; int * ciss_notify_thread; int ciss_notify; } ;
struct ciss_request {scalar_t__ cr_data; } ;
struct ciss_notify {int class; } ;


 int CISS_FLAG_THREAD_SHUT ;



 int PUSER ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 struct ciss_request* ciss_dequeue_notify (struct ciss_softc*) ;
 int ciss_notify_hotplug (struct ciss_softc*,struct ciss_notify*) ;
 int ciss_notify_logical (struct ciss_softc*,struct ciss_notify*) ;
 int ciss_notify_physical (struct ciss_softc*,struct ciss_notify*) ;
 int ciss_release_request (struct ciss_request*) ;
 int kproc_exit (int ) ;
 int msleep (int *,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 int wakeup (int **) ;

__attribute__((used)) static void
ciss_notify_thread(void *arg)
{
    struct ciss_softc *sc;
    struct ciss_request *cr;
    struct ciss_notify *cn;

    sc = (struct ciss_softc *)arg;
    mtx_lock(&sc->ciss_mtx);

    for (;;) {
 if (STAILQ_EMPTY(&sc->ciss_notify) != 0 &&
     (sc->ciss_flags & CISS_FLAG_THREAD_SHUT) == 0) {
     msleep(&sc->ciss_notify, &sc->ciss_mtx, PUSER, "idle", 0);
 }

 if (sc->ciss_flags & CISS_FLAG_THREAD_SHUT)
     break;

 cr = ciss_dequeue_notify(sc);

 if (cr == ((void*)0))
  panic("cr null");
 cn = (struct ciss_notify *)cr->cr_data;

 switch (cn->class) {
 case 130:
     ciss_notify_hotplug(sc, cn);
     break;
 case 129:
     ciss_notify_logical(sc, cn);
     break;
 case 128:
     ciss_notify_physical(sc, cn);
     break;
 }

 ciss_release_request(cr);

    }
    sc->ciss_notify_thread = ((void*)0);
    wakeup(&sc->ciss_notify_thread);

    mtx_unlock(&sc->ciss_mtx);
    kproc_exit(0);
}
