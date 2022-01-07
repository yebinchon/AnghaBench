
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_rr_softc {int sc_rr_tailq; int * sc_active; int sc_wait; } ;
struct TYPE_2__ {int units; } ;


 int KASSERT (int ,char*) ;
 int LIST_REMOVE (struct g_rr_softc*,int ) ;
 int M_GEOM_SCHED ;
 int TAILQ_EMPTY (int *) ;
 int callout_drain (int *) ;
 int free (struct g_rr_softc*,int ) ;
 TYPE_1__ me ;
 int sc_next ;

__attribute__((used)) static void
g_rr_fini(void *data)
{
 struct g_rr_softc *sc = data;

 callout_drain(&sc->sc_wait);
 KASSERT(sc->sc_active == ((void*)0), ("still a queue under service"));
 KASSERT(TAILQ_EMPTY(&sc->sc_rr_tailq), ("still scheduled queues"));

 LIST_REMOVE(sc, sc_next);
 me.units--;
 free(sc, M_GEOM_SCHED);
}
