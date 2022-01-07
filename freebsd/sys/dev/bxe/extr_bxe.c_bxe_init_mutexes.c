
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_mtx_name; int phy_mtx; } ;
struct bxe_softc {int unit; int mcast_mtx_name; int mcast_mtx; int stats_mtx_name; int stats_mtx; int print_mtx_name; int print_mtx; int fwmb_mtx_name; int fwmb_mtx; TYPE_1__ port; int dmae_mtx_name; int dmae_mtx; int sp_mtx_name; int sp_mtx; int core_mtx_name; int core_mtx; int core_sx_name; int core_sx; } ;


 int MTX_DEF ;
 int mtx_init (int *,int ,int *,int ) ;
 int snprintf (int ,int,char*,int) ;
 int sx_init (int *,int ) ;

__attribute__((used)) static void
bxe_init_mutexes(struct bxe_softc *sc)
{





    snprintf(sc->core_mtx_name, sizeof(sc->core_mtx_name),
             "bxe%d_core_lock", sc->unit);
    mtx_init(&sc->core_mtx, sc->core_mtx_name, ((void*)0), MTX_DEF);


    snprintf(sc->sp_mtx_name, sizeof(sc->sp_mtx_name),
             "bxe%d_sp_lock", sc->unit);
    mtx_init(&sc->sp_mtx, sc->sp_mtx_name, ((void*)0), MTX_DEF);

    snprintf(sc->dmae_mtx_name, sizeof(sc->dmae_mtx_name),
             "bxe%d_dmae_lock", sc->unit);
    mtx_init(&sc->dmae_mtx, sc->dmae_mtx_name, ((void*)0), MTX_DEF);

    snprintf(sc->port.phy_mtx_name, sizeof(sc->port.phy_mtx_name),
             "bxe%d_phy_lock", sc->unit);
    mtx_init(&sc->port.phy_mtx, sc->port.phy_mtx_name, ((void*)0), MTX_DEF);

    snprintf(sc->fwmb_mtx_name, sizeof(sc->fwmb_mtx_name),
             "bxe%d_fwmb_lock", sc->unit);
    mtx_init(&sc->fwmb_mtx, sc->fwmb_mtx_name, ((void*)0), MTX_DEF);

    snprintf(sc->print_mtx_name, sizeof(sc->print_mtx_name),
             "bxe%d_print_lock", sc->unit);
    mtx_init(&(sc->print_mtx), sc->print_mtx_name, ((void*)0), MTX_DEF);

    snprintf(sc->stats_mtx_name, sizeof(sc->stats_mtx_name),
             "bxe%d_stats_lock", sc->unit);
    mtx_init(&(sc->stats_mtx), sc->stats_mtx_name, ((void*)0), MTX_DEF);

    snprintf(sc->mcast_mtx_name, sizeof(sc->mcast_mtx_name),
             "bxe%d_mcast_lock", sc->unit);
    mtx_init(&(sc->mcast_mtx), sc->mcast_mtx_name, ((void*)0), MTX_DEF);
}
