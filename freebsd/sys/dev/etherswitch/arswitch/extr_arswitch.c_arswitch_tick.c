
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int callout_tick; } ;


 int arswitch_miipollstat (struct arswitch_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct arswitch_softc*) ;
 int hz ;

__attribute__((used)) static void
arswitch_tick(void *arg)
{
 struct arswitch_softc *sc = arg;

 arswitch_miipollstat(sc);
 callout_reset(&sc->callout_tick, hz, arswitch_tick, sc);
}
