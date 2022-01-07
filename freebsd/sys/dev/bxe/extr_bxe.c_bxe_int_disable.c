
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ int_block; } ;
struct bxe_softc {TYPE_1__ devinfo; } ;


 scalar_t__ INT_BLOCK_HC ;
 int bxe_hc_int_disable (struct bxe_softc*) ;
 int bxe_igu_int_disable (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_int_disable(struct bxe_softc *sc)
{
    if (sc->devinfo.int_block == INT_BLOCK_HC) {
        bxe_hc_int_disable(sc);
    } else {
        bxe_igu_int_disable(sc);
    }
}
