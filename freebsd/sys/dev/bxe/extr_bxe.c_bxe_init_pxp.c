
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bxe_softc {int mrrs; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int) ;
 int DBG_LOAD ;
 int PCIM_EXP_CTL_MAX_PAYLOAD ;
 int PCIM_EXP_CTL_MAX_READ_REQUEST ;
 int PCIR_EXPRESS_DEVICE_CTL ;
 int bxe_pcie_capability_read (struct bxe_softc*,int ,int) ;
 int ecore_init_pxp_arb (struct bxe_softc*,int,int) ;

__attribute__((used)) static void
bxe_init_pxp(struct bxe_softc *sc)
{
    uint16_t devctl;
    int r_order, w_order;

    devctl = bxe_pcie_capability_read(sc, PCIR_EXPRESS_DEVICE_CTL, 2);

    BLOGD(sc, DBG_LOAD, "read 0x%08x from devctl\n", devctl);

    w_order = ((devctl & PCIM_EXP_CTL_MAX_PAYLOAD) >> 5);

    if (sc->mrrs == -1) {
        r_order = ((devctl & PCIM_EXP_CTL_MAX_READ_REQUEST) >> 12);
    } else {
        BLOGD(sc, DBG_LOAD, "forcing read order to %d\n", sc->mrrs);
        r_order = sc->mrrs;
    }

    ecore_init_pxp_arb(sc, r_order, w_order);
}
