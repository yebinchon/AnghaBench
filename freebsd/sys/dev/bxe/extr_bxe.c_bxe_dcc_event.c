
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* mf_config; } ;
struct TYPE_4__ {TYPE_1__ mf_info; } ;
struct bxe_softc {int flags; TYPE_2__ devinfo; } ;


 int BLOGD (struct bxe_softc*,int ,char*,...) ;
 int BXE_MF_FUNC_DIS ;
 int DBG_INTR ;
 int DRV_MSG_CODE_DCC_FAILURE ;
 int DRV_MSG_CODE_DCC_OK ;
 int DRV_STATUS_DCC_BANDWIDTH_ALLOCATION ;
 int DRV_STATUS_DCC_DISABLE_ENABLE_PF ;
 int FUNC_MF_CFG_FUNC_DISABLED ;
 size_t SC_VN (struct bxe_softc*) ;
 int bxe_config_mf_bw (struct bxe_softc*) ;
 int bxe_e1h_disable (struct bxe_softc*) ;
 int bxe_e1h_enable (struct bxe_softc*) ;
 int bxe_fw_command (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static void
bxe_dcc_event(struct bxe_softc *sc,
              uint32_t dcc_event)
{
    BLOGD(sc, DBG_INTR, "dcc_event 0x%08x\n", dcc_event);

    if (dcc_event & DRV_STATUS_DCC_DISABLE_ENABLE_PF) {





        if (sc->devinfo.mf_info.mf_config[SC_VN(sc)] & FUNC_MF_CFG_FUNC_DISABLED) {
            BLOGD(sc, DBG_INTR, "mf_cfg function disabled\n");
            sc->flags |= BXE_MF_FUNC_DIS;
            bxe_e1h_disable(sc);
        } else {
            BLOGD(sc, DBG_INTR, "mf_cfg function enabled\n");
            sc->flags &= ~BXE_MF_FUNC_DIS;
            bxe_e1h_enable(sc);
        }
        dcc_event &= ~DRV_STATUS_DCC_DISABLE_ENABLE_PF;
    }

    if (dcc_event & DRV_STATUS_DCC_BANDWIDTH_ALLOCATION) {
        bxe_config_mf_bw(sc);
        dcc_event &= ~DRV_STATUS_DCC_BANDWIDTH_ALLOCATION;
    }


    if (dcc_event)
        bxe_fw_command(sc, DRV_MSG_CODE_DCC_FAILURE, 0);
    else
        bxe_fw_command(sc, DRV_MSG_CODE_DCC_OK, 0);
}
