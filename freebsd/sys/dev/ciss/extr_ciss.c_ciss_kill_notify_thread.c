
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int ciss_mtx; int * ciss_notify_thread; int ciss_notify; int ciss_flags; } ;


 int CISS_FLAG_THREAD_SHUT ;
 int PUSER ;
 int msleep (int **,int *,int ,char*,int ) ;
 int wakeup (int *) ;

__attribute__((used)) static void
ciss_kill_notify_thread(struct ciss_softc *sc)
{

    if (sc->ciss_notify_thread == ((void*)0))
 return;

    sc->ciss_flags |= CISS_FLAG_THREAD_SHUT;
    wakeup(&sc->ciss_notify);
    msleep(&sc->ciss_notify_thread, &sc->ciss_mtx, PUSER, "thtrm", 0);
}
