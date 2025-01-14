
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {scalar_t__ state; int sp_state; int rx_mode; int ifp; } ;
typedef int if_t ;


 int BLOGD (struct bxe_softc*,int ,char*,...) ;
 scalar_t__ BXE_MAX_MULTICAST ;
 int BXE_RX_MODE_ALLMULTI ;
 int BXE_RX_MODE_NORMAL ;
 int BXE_RX_MODE_PROMISC ;
 scalar_t__ BXE_STATE_OPEN ;
 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 int DBG_LOAD ;
 int DBG_SP ;
 int ECORE_FILTER_RX_MODE_PENDING ;
 int ECORE_FILTER_RX_MODE_SCHED ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ IS_PF (struct bxe_softc*) ;
 int bxe_set_bit (int ,int *) ;
 scalar_t__ bxe_set_mc_list (struct bxe_softc*) ;
 int bxe_set_storm_rx_mode (struct bxe_softc*) ;
 scalar_t__ bxe_set_uc_list (struct bxe_softc*) ;
 scalar_t__ bxe_test_bit (int ,int *) ;
 scalar_t__ if_getamcount (int ) ;
 int if_getflags (int ) ;

__attribute__((used)) static void
bxe_set_rx_mode(struct bxe_softc *sc)
{
    if_t ifp = sc->ifp;
    uint32_t rx_mode = BXE_RX_MODE_NORMAL;

    if (sc->state != BXE_STATE_OPEN) {
        BLOGD(sc, DBG_SP, "state is %x, returning\n", sc->state);
        return;
    }

    BLOGD(sc, DBG_SP, "if_flags(ifp)=0x%x\n", if_getflags(sc->ifp));

    if (if_getflags(ifp) & IFF_PROMISC) {
        rx_mode = BXE_RX_MODE_PROMISC;
    } else if ((if_getflags(ifp) & IFF_ALLMULTI) ||
               ((if_getamcount(ifp) > BXE_MAX_MULTICAST) &&
                CHIP_IS_E1(sc))) {
        rx_mode = BXE_RX_MODE_ALLMULTI;
    } else {
        if (IS_PF(sc)) {

            if (bxe_set_mc_list(sc) < 0) {
                rx_mode = BXE_RX_MODE_ALLMULTI;
            }
            if (bxe_set_uc_list(sc) < 0) {
                rx_mode = BXE_RX_MODE_PROMISC;
            }
        }
    }

    sc->rx_mode = rx_mode;


    if (bxe_test_bit(ECORE_FILTER_RX_MODE_PENDING, &sc->sp_state)) {
        BLOGD(sc, DBG_LOAD, "Scheduled setting rx_mode with ECORE...\n");
        bxe_set_bit(ECORE_FILTER_RX_MODE_SCHED, &sc->sp_state);
        return;
    }

    if (IS_PF(sc)) {
        bxe_set_storm_rx_mode(sc);
    }
}
