
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_mtx; } ;
struct bxe_softc {int mcast_mtx; int stats_mtx; int print_mtx; int fwmb_mtx; TYPE_1__ port; int dmae_mtx; int sp_mtx; int core_mtx; int core_sx; } ;


 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int sx_destroy (int *) ;

__attribute__((used)) static void
bxe_release_mutexes(struct bxe_softc *sc)
{



    if (mtx_initialized(&sc->core_mtx)) {
        mtx_destroy(&sc->core_mtx);
    }


    if (mtx_initialized(&sc->sp_mtx)) {
        mtx_destroy(&sc->sp_mtx);
    }

    if (mtx_initialized(&sc->dmae_mtx)) {
        mtx_destroy(&sc->dmae_mtx);
    }

    if (mtx_initialized(&sc->port.phy_mtx)) {
        mtx_destroy(&sc->port.phy_mtx);
    }

    if (mtx_initialized(&sc->fwmb_mtx)) {
        mtx_destroy(&sc->fwmb_mtx);
    }

    if (mtx_initialized(&sc->print_mtx)) {
        mtx_destroy(&sc->print_mtx);
    }

    if (mtx_initialized(&sc->stats_mtx)) {
        mtx_destroy(&sc->stats_mtx);
    }

    if (mtx_initialized(&sc->mcast_mtx)) {
        mtx_destroy(&sc->mcast_mtx);
    }
}
