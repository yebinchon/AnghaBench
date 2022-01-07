
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int equeue_mtx; int worker; int equeue; } ;
struct gv_event {int type; } ;


 int GV_EVENT_THREAD_EXIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int PDROP ;
 int TAILQ_INSERT_TAIL (int *,struct gv_event*,int ) ;
 int events ;
 struct gv_event* g_malloc (int,int) ;
 int msleep (int ,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int wakeup (struct gv_softc*) ;

void
gv_worker_exit(struct gv_softc *sc)
{
 struct gv_event *ev;

 ev = g_malloc(sizeof(*ev), M_WAITOK | M_ZERO);
 ev->type = GV_EVENT_THREAD_EXIT;

 mtx_lock(&sc->equeue_mtx);
 TAILQ_INSERT_TAIL(&sc->equeue, ev, events);
 wakeup(sc);
 msleep(sc->worker, &sc->equeue_mtx, PDROP, "gv_wor", 0);
}
