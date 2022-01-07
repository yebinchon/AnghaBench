
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int equeue_mtx; int equeue; } ;
struct gv_event {int dummy; } ;


 int KASSERT (int ,char*) ;
 struct gv_event* TAILQ_FIRST (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

struct gv_event *
gv_get_event(struct gv_softc *sc)
{
 struct gv_event *ev;

 KASSERT(sc != ((void*)0), ("NULL sc"));
 mtx_lock(&sc->equeue_mtx);
 ev = TAILQ_FIRST(&sc->equeue);
 mtx_unlock(&sc->equeue_mtx);
 return (ev);
}
