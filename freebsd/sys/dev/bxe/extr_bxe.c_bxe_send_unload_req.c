
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BXE_NOMCP (struct bxe_softc*) ;
 int DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS ;
 int UNLOAD_NORMAL ;
 int bxe_fw_command (struct bxe_softc*,int ,int ) ;
 int bxe_nic_unload_no_mcp (struct bxe_softc*) ;

__attribute__((used)) static uint32_t
bxe_send_unload_req(struct bxe_softc *sc,
                    int unload_mode)
{
    uint32_t reset_code = 0;


    if (unload_mode == UNLOAD_NORMAL) {
        reset_code = DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS;
    } else {
        reset_code = DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS;
    }


    if (!BXE_NOMCP(sc)) {
        reset_code = bxe_fw_command(sc, reset_code, 0);
    } else {
        reset_code = bxe_nic_unload_no_mcp(sc);
    }

    return (reset_code);
}
