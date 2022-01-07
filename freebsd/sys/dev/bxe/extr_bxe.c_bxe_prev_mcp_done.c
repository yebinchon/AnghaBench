
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGE (struct bxe_softc*,char*) ;
 int DRV_MSG_CODE_UNLOAD_DONE ;
 int DRV_MSG_CODE_UNLOAD_SKIP_LINK_RESET ;
 int bxe_fw_command (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static int
bxe_prev_mcp_done(struct bxe_softc *sc)
{
    uint32_t rc = bxe_fw_command(sc, DRV_MSG_CODE_UNLOAD_DONE,
                                 DRV_MSG_CODE_UNLOAD_SKIP_LINK_RESET);
    if (!rc) {
        BLOGE(sc, "MCP response failure, aborting\n");
        return (-1);
    }

    return (0);
}
