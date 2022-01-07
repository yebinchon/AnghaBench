
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adm6996fc_softc {int callout_tick; } ;


 int adm6996fc_miipollstat (struct adm6996fc_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct adm6996fc_softc*) ;
 int hz ;

__attribute__((used)) static void
adm6996fc_tick(void *arg)
{
 struct adm6996fc_softc *sc;

 sc = arg;

 adm6996fc_miipollstat(sc);
 callout_reset(&sc->callout_tick, hz, adm6996fc_tick, sc);
}
