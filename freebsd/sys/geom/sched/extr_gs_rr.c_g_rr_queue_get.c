
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_rr_softc {int sc_geom; } ;
struct g_rr_queue {int dummy; } ;
struct bio {int dummy; } ;


 struct g_rr_queue* g_sched_get_class (int ,struct bio*) ;

__attribute__((used)) static struct g_rr_queue *
g_rr_queue_get(struct g_rr_softc *sc, struct bio *bp)
{

 return (g_sched_get_class(sc->sc_geom, bp));
}
