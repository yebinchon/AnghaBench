
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_sched_softc {int sc_data; TYPE_1__* sc_gsched; } ;
struct g_sched_class {scalar_t__ gsc_refs; scalar_t__ gsc_expire; } ;
struct g_geom {struct g_sched_softc* softc; } ;
struct TYPE_4__ {int gs_expire_secs; } ;
struct TYPE_3__ {int (* gs_fini_class ) (int ,void*) ;} ;


 int LIST_REMOVE (struct g_sched_class*,int ) ;
 int M_GEOM_SCHED ;
 int free (struct g_sched_class*,int ) ;
 struct g_sched_class* g_sched_priv2class (void*) ;
 int gsc_clist ;
 int hz ;
 TYPE_2__ me ;
 int stub1 (int ,void*) ;
 scalar_t__ ticks ;

void
g_sched_put_class(struct g_geom *gp, void *priv)
{
 struct g_sched_class *gsc;
 struct g_sched_softc *sc;

 gsc = g_sched_priv2class(priv);
 gsc->gsc_expire = ticks + me.gs_expire_secs * hz;

 if (--gsc->gsc_refs > 0)
  return;

 sc = gp->softc;
 sc->sc_gsched->gs_fini_class(sc->sc_data, priv);

 LIST_REMOVE(gsc, gsc_clist);
 free(gsc, M_GEOM_SCHED);
}
