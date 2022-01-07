
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int link_vars; int link_params; } ;


 int bxe_acquire_phy_lock (struct bxe_softc*) ;
 int bxe_release_phy_lock (struct bxe_softc*) ;
 int elink_link_reset (int *,int *,int) ;

__attribute__((used)) static void bxe_force_link_reset(struct bxe_softc *sc)
{

        bxe_acquire_phy_lock(sc);
        elink_link_reset(&sc->link_params, &sc->link_vars, 1);
        bxe_release_phy_lock(sc);
}
