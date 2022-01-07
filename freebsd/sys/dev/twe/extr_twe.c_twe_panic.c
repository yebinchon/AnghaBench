
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int dummy; } ;


 int panic (char*) ;
 int twe_print_controller (struct twe_softc*) ;
 int twe_reset (struct twe_softc*) ;

__attribute__((used)) static void
twe_panic(struct twe_softc *sc, char *reason)
{
    twe_print_controller(sc);



    twe_reset(sc);

}
