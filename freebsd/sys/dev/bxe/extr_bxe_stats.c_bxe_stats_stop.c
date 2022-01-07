
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ pmf; } ;
struct bxe_softc {TYPE_1__ port; } ;


 int FALSE ;
 int bxe_hw_stats_post (struct bxe_softc*) ;
 scalar_t__ bxe_hw_stats_update (struct bxe_softc*) ;
 int bxe_net_stats_update (struct bxe_softc*) ;
 int bxe_port_stats_stop (struct bxe_softc*) ;
 int bxe_stats_comp (struct bxe_softc*) ;
 scalar_t__ bxe_storm_stats_update (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_stats_stop(struct bxe_softc *sc)
{
    uint8_t update = FALSE;

    bxe_stats_comp(sc);

    if (sc->port.pmf) {
        update = bxe_hw_stats_update(sc) == 0;
    }

    update |= bxe_storm_stats_update(sc) == 0;

    if (update) {
        bxe_net_stats_update(sc);

        if (sc->port.pmf) {
            bxe_port_stats_stop(sc);
        }

        bxe_hw_stats_post(sc);
        bxe_stats_comp(sc);
    }
}
