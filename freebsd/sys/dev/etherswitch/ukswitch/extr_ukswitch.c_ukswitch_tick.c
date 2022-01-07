
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ukswitch_softc {int callout_tick; } ;


 int callout_reset (int *,int ,void (*) (void*),struct ukswitch_softc*) ;
 int hz ;
 int ukswitch_miipollstat (struct ukswitch_softc*) ;

__attribute__((used)) static void
ukswitch_tick(void *arg)
{
 struct ukswitch_softc *sc = arg;

 ukswitch_miipollstat(sc);
 callout_reset(&sc->callout_tick, hz, ukswitch_tick, sc);
}
