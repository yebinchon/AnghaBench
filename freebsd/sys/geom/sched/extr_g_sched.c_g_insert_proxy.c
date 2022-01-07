
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_sched_softc {int sc_flags; } ;
struct g_provider {scalar_t__ nstart; scalar_t__ nend; int ace; int acw; int acr; struct g_geom* geom; int index; int private; } ;
struct g_geom {int * start; int provider; struct g_sched_softc* softc; } ;
struct g_consumer {int ace; int acw; int acr; } ;
typedef int g_start_t ;
struct TYPE_2__ {scalar_t__ gs_npending; } ;


 int ETIMEDOUT ;
 int G_SCHED_PROXYING ;
 int LIST_INSERT_HEAD (int *,struct g_provider*,int ) ;
 int LIST_REMOVE (struct g_provider*,int ) ;
 int PRIBIO ;
 int g_cancel_event (struct g_provider*) ;
 int g_sched_flush_pending (int *) ;
 int * g_sched_start ;
 int * g_sched_temporary_start ;
 int hz ;
 TYPE_1__ me ;
 int provider ;
 int ticks ;
 int tsleep (struct g_provider*,int ,char*,int) ;

__attribute__((used)) static int
g_insert_proxy(struct g_geom *gp, struct g_provider *newpp,
    struct g_geom *dstgp, struct g_provider *pp, struct g_consumer *cp)
{
 struct g_sched_softc *sc = gp->softc;
 g_start_t *saved_start, *flush = g_sched_start;
 int error = 0, endticks = ticks + hz;

 g_cancel_event(newpp);

 newpp->private = pp->private;
 newpp->index = pp->index;


 me.gs_npending = 0;
 saved_start = pp->geom->start;
 dstgp->start = g_sched_temporary_start;

 while (pp->nstart - pp->nend != me.gs_npending &&
     endticks - ticks >= 0)
  tsleep(pp, PRIBIO, "-", hz/10);

 if (pp->nstart - pp->nend != me.gs_npending) {
  flush = saved_start;
  error = ETIMEDOUT;
  goto fail;
 }


 LIST_REMOVE(pp, provider);
 pp->geom = gp;
 LIST_INSERT_HEAD(&gp->provider, pp, provider);





 cp->acr = newpp->acr = pp->acr;
 cp->acw = newpp->acw = pp->acw;
 cp->ace = newpp->ace = pp->ace;
 sc->sc_flags |= G_SCHED_PROXYING;

fail:
 dstgp->start = saved_start;

 g_sched_flush_pending(flush);

 return (error);
}
