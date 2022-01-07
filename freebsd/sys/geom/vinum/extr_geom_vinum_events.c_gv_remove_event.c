
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int equeue_mtx; int equeue; } ;
struct gv_event {int dummy; } ;


 int KASSERT (int ,char*) ;
 int TAILQ_REMOVE (int *,struct gv_event*,int ) ;
 int events ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
gv_remove_event(struct gv_softc *sc, struct gv_event *ev)
{

 KASSERT(sc != ((void*)0), ("NULL sc"));
 KASSERT(ev != ((void*)0), ("NULL ev"));
 mtx_lock(&sc->equeue_mtx);
 TAILQ_REMOVE(&sc->equeue, ev, events);
 mtx_unlock(&sc->equeue_mtx);
}
