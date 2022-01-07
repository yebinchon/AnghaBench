
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BXE_NOMCP (struct bxe_softc*) ;
 int DRV_MSG_CODE_UNLOAD_DONE ;
 int DRV_MSG_CODE_UNLOAD_SKIP_LINK_RESET ;
 int bxe_fw_command (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static void
bxe_send_unload_done(struct bxe_softc *sc,
                     uint8_t keep_link)
{
    uint32_t reset_param =
        keep_link ? DRV_MSG_CODE_UNLOAD_SKIP_LINK_RESET : 0;


    if (!BXE_NOMCP(sc)) {
        bxe_fw_command(sc, DRV_MSG_CODE_UNLOAD_DONE, reset_param);
    }
}
