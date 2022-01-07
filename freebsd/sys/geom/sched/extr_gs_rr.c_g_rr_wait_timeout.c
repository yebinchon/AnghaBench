
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_rr_softc {int * sc_active; struct g_geom* sc_geom; } ;
struct g_geom {int dummy; } ;
struct TYPE_2__ {int wait_miss; int wait_hit; } ;


 int g_rr_queue_put (int *) ;
 int g_sched_dispatch (struct g_geom*) ;
 int g_sched_lock (struct g_geom*) ;
 int g_sched_unlock (struct g_geom*) ;
 TYPE_1__ me ;

__attribute__((used)) static void
g_rr_wait_timeout(void *data)
{
 struct g_rr_softc *sc = data;
 struct g_geom *geom = sc->sc_geom;

 g_sched_lock(geom);




 if (sc->sc_active != ((void*)0)) {

  g_rr_queue_put(sc->sc_active);
  sc->sc_active = ((void*)0);
  me.wait_hit--;
  me.wait_miss++;
 }
 g_sched_dispatch(geom);
 g_sched_unlock(geom);
}
