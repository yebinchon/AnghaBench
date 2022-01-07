
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e6060sw_softc {int callout_tick; } ;


 int callout_reset (int *,int ,void (*) (void*),struct e6060sw_softc*) ;
 int e6060sw_miipollstat (struct e6060sw_softc*) ;
 int hz ;

__attribute__((used)) static void
e6060sw_tick(void *arg)
{
 struct e6060sw_softc *sc;

 sc = arg;

 e6060sw_miipollstat(sc);
 callout_reset(&sc->callout_tick, hz, e6060sw_tick, sc);
}
