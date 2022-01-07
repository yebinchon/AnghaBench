
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_delay_softc {int sc_wait; } ;
struct TYPE_2__ {int units; } ;


 int M_GEOM_SCHED ;
 int callout_drain (int *) ;
 int free (struct g_delay_softc*,int ) ;
 TYPE_1__ me ;

__attribute__((used)) static void
g_delay_fini(void *data)
{
 struct g_delay_softc *sc = data;




 callout_drain(&sc->sc_wait);
 me.units--;
 free(sc, M_GEOM_SCHED);
}
