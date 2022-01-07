
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip17x_softc {int callout_tick; } ;


 int callout_reset (int *,int ,void (*) (void*),struct ip17x_softc*) ;
 int hz ;
 int ip17x_miipollstat (struct ip17x_softc*) ;

__attribute__((used)) static void
ip17x_tick(void *arg)
{
 struct ip17x_softc *sc;

 sc = arg;
 ip17x_miipollstat(sc);
 callout_reset(&sc->callout_tick, hz, ip17x_tick, sc);
}
