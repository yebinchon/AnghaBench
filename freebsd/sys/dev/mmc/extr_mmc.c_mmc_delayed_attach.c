
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int config_intrhook; } ;


 int config_intrhook_disestablish (int *) ;
 int mmc_scan (struct mmc_softc*) ;

__attribute__((used)) static void
mmc_delayed_attach(void *xsc)
{
 struct mmc_softc *sc = xsc;

 mmc_scan(sc);
 config_intrhook_disestablish(&sc->config_intrhook);
}
