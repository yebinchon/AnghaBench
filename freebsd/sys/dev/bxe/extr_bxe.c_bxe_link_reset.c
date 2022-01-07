
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int link_vars; int link_params; } ;


 int BLOGW (struct bxe_softc*,char*) ;
 int BXE_NOMCP (struct bxe_softc*) ;
 int CHIP_REV_IS_SLOW (struct bxe_softc*) ;
 int bxe_acquire_phy_lock (struct bxe_softc*) ;
 int bxe_release_phy_lock (struct bxe_softc*) ;
 int elink_lfa_reset (int *,int *) ;

__attribute__((used)) static void
bxe_link_reset(struct bxe_softc *sc)
{
    if (!BXE_NOMCP(sc)) {
 bxe_acquire_phy_lock(sc);
        elink_lfa_reset(&sc->link_params, &sc->link_vars);
 bxe_release_phy_lock(sc);
    } else {
        if (!CHIP_REV_IS_SLOW(sc)) {
            BLOGW(sc, "Bootcode is missing - cannot reset link\n");
        }
    }
}
