
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bc_ver; } ;
struct bxe_softc {TYPE_1__ devinfo; } ;


 int BLOGD (struct bxe_softc*,int ,char*,...) ;
 int BLOGE (struct bxe_softc*,char*) ;
 scalar_t__ CHIP_IS_E1x (struct bxe_softc*) ;
 int DBG_LOAD ;
 int DELAY (int) ;
 int DRV_MSG_CODE_INITIATE_FLR ;
 scalar_t__ REQ_BC_VER_4_INITIATE_FLR ;
 int bxe_fw_command (struct bxe_softc*,int ,int ) ;
 int bxe_is_pcie_pending (struct bxe_softc*) ;

__attribute__((used)) static int
bxe_do_flr(struct bxe_softc *sc)
{
    int i;


    if (CHIP_IS_E1x(sc)) {
        BLOGD(sc, DBG_LOAD, "FLR not supported in E1/E1H\n");
        return (-1);
    }


    if (sc->devinfo.bc_ver < REQ_BC_VER_4_INITIATE_FLR) {
        BLOGD(sc, DBG_LOAD, "FLR not supported by BC_VER: 0x%08x\n",
              sc->devinfo.bc_ver);
        return (-1);
    }


    for (i = 0; i < 4; i++) {
        if (i) {
            DELAY(((1 << (i - 1)) * 100) * 1000);
        }

        if (!bxe_is_pcie_pending(sc)) {
            goto clear;
        }
    }

    BLOGE(sc, "PCIE transaction is not cleared, "
              "proceeding with reset anyway\n");

clear:

    BLOGD(sc, DBG_LOAD, "Initiating FLR\n");
    bxe_fw_command(sc, DRV_MSG_CODE_INITIATE_FLR, 0);

    return (0);
}
