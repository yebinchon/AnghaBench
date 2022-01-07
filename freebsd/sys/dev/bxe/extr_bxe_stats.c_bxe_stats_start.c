
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pmf; } ;
struct bxe_softc {scalar_t__ func_stx; TYPE_1__ port; } ;


 scalar_t__ IS_VF (struct bxe_softc*) ;
 int bxe_func_stats_init (struct bxe_softc*) ;
 int bxe_hw_stats_post (struct bxe_softc*) ;
 int bxe_port_stats_init (struct bxe_softc*) ;
 int bxe_storm_stats_post (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_stats_start(struct bxe_softc *sc)
{




    if (IS_VF(sc)) {
        return;
    }

    if (sc->port.pmf) {
        bxe_port_stats_init(sc);
    }

    else if (sc->func_stx) {
        bxe_func_stats_init(sc);
    }

    bxe_hw_stats_post(sc);
    bxe_storm_stats_post(sc);
}
