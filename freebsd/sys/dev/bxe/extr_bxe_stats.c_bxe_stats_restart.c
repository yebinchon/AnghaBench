
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 scalar_t__ IS_VF (struct bxe_softc*) ;
 int bxe_stats_comp (struct bxe_softc*) ;
 int bxe_stats_start (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_stats_restart(struct bxe_softc *sc)
{




    if (IS_VF(sc)) {
        return;
    }

    bxe_stats_comp(sc);
    bxe_stats_start(sc);
}
