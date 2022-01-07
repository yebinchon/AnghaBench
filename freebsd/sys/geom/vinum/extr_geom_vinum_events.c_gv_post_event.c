
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int equeue_mtx; int equeue; } ;
struct gv_event {int type; void* arg4; void* arg3; void* arg2; void* arg1; } ;
typedef void* intmax_t ;


 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct gv_event*,int ) ;
 int events ;
 struct gv_event* g_malloc (int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct gv_softc*) ;

void
gv_post_event(struct gv_softc *sc, int event, void *arg1, void *arg2,
    intmax_t arg3, intmax_t arg4)
{
 struct gv_event *ev;

 ev = g_malloc(sizeof(*ev), M_WAITOK | M_ZERO);
 ev->type = event;
 ev->arg1 = arg1;
 ev->arg2 = arg2;
 ev->arg3 = arg3;
 ev->arg4 = arg4;

 mtx_lock(&sc->equeue_mtx);
 TAILQ_INSERT_TAIL(&sc->equeue, ev, events);
 wakeup(sc);
 mtx_unlock(&sc->equeue_mtx);
}
