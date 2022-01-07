
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_sched_softc {int sc_flags; int sc_data; int sc_mtx; struct g_gsched* sc_gsched; } ;
struct g_gsched {struct bio* (* gs_next ) (int ,int ) ;} ;
struct g_geom {int consumer; struct g_sched_softc* softc; } ;
struct bio {int dummy; } ;


 int G_SCHED_FLUSHING ;
 int KASSERT (int ,char*) ;
 int LIST_FIRST (int *) ;
 int g_io_request (struct bio*,int ) ;
 int mtx_owned (int *) ;
 struct bio* stub1 (int ,int ) ;

void
g_sched_dispatch(struct g_geom *gp)
{
 struct g_sched_softc *sc = gp->softc;
 struct g_gsched *gsp = sc->sc_gsched;
 struct bio *bp;

 KASSERT(mtx_owned(&sc->sc_mtx), ("sc_mtx not owned during dispatch"));

 if ((sc->sc_flags & G_SCHED_FLUSHING))
  return;

 while ((bp = gsp->gs_next(sc->sc_data, 0)) != ((void*)0))
  g_io_request(bp, LIST_FIRST(&gp->consumer));
}
