
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_sched_softc {int sc_flags; int * sc_data; int * sc_gsched; int * sc_hash; int sc_mask; } ;
struct g_gsched {int (* gs_fini ) (int *) ;} ;
struct g_geom {struct g_sched_softc* softc; } ;


 int G_SCHED_FLUSHING ;
 int g_gsched_unref (struct g_gsched*) ;
 int g_sched_forced_dispatch (struct g_geom*) ;
 int g_sched_hash_fini (struct g_geom*,int *,int ,struct g_gsched*,int *) ;
 int g_sched_lock (struct g_geom*) ;
 int g_sched_unlock (struct g_geom*) ;
 int g_sched_wait_pending (struct g_geom*) ;
 int stub1 (int *) ;

__attribute__((used)) static int
g_sched_remove_locked(struct g_geom *gp, struct g_gsched *gsp)
{
 struct g_sched_softc *sc = gp->softc;
 int error;


 sc->sc_flags |= G_SCHED_FLUSHING;

 g_sched_forced_dispatch(gp);
 error = g_sched_wait_pending(gp);
 if (error)
  goto failed;



 g_sched_hash_fini(gp, sc->sc_hash, sc->sc_mask, gsp, sc->sc_data);
 sc->sc_hash = ((void*)0);
 g_sched_unlock(gp);
 gsp->gs_fini(sc->sc_data);
 g_sched_lock(gp);

 sc->sc_gsched = ((void*)0);
 sc->sc_data = ((void*)0);
 g_gsched_unref(gsp);

failed:
 sc->sc_flags &= ~G_SCHED_FLUSHING;

 return (error);
}
