
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_ich; } ;


 int config_intrhook_disestablish (int *) ;
 int twe_init (struct twe_softc*) ;

__attribute__((used)) static void
twe_intrhook(void *arg)
{
    struct twe_softc *sc = (struct twe_softc *)arg;


    config_intrhook_disestablish(&sc->twe_ich);


    twe_init(sc);
}
