
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int bxe_int_disable (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_int_disable_sync(struct bxe_softc *sc,
                     int disable_hw)
{
    if (disable_hw) {

        bxe_int_disable(sc);
    }






}
