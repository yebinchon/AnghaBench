
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwi_softc {TYPE_1__* sc_txstats; } ;
struct TYPE_2__ {int stats_ctrl_base; } ;


 int bwi_reset_rx_ring32 (struct bwi_softc*,int ) ;

__attribute__((used)) static void
bwi_free_txstats32(struct bwi_softc *sc)
{
 bwi_reset_rx_ring32(sc, sc->sc_txstats->stats_ctrl_base);
}
