
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGE (struct bxe_softc*,char*,int,int,int) ;
 scalar_t__ CHIP_REV_IS_SLOW (struct bxe_softc*) ;
 int DELAY (int) ;
 int MCPR_NVM_ADDR_NVM_ADDR_VALUE ;
 int MCPR_NVM_COMMAND_DOIT ;
 int MCPR_NVM_COMMAND_DONE ;
 int MCPR_NVM_COMMAND_WR ;
 int MCP_REG_MCPR_NVM_ADDR ;
 int MCP_REG_MCPR_NVM_COMMAND ;
 int MCP_REG_MCPR_NVM_WRITE ;
 int NVRAM_TIMEOUT_COUNT ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;

__attribute__((used)) static int
bxe_nvram_write_dword(struct bxe_softc *sc,
                      uint32_t offset,
                      uint32_t val,
                      uint32_t cmd_flags)
{
    int count, i, rc;


    cmd_flags |= (MCPR_NVM_COMMAND_DOIT | MCPR_NVM_COMMAND_WR);


    REG_WR(sc, MCP_REG_MCPR_NVM_COMMAND, MCPR_NVM_COMMAND_DONE);


    REG_WR(sc, MCP_REG_MCPR_NVM_WRITE, val);


    REG_WR(sc, MCP_REG_MCPR_NVM_ADDR,
           (offset & MCPR_NVM_ADDR_NVM_ADDR_VALUE));


    REG_WR(sc, MCP_REG_MCPR_NVM_COMMAND, cmd_flags);


    count = NVRAM_TIMEOUT_COUNT;
    if (CHIP_REV_IS_SLOW(sc)) {
        count *= 100;
    }


    rc = -1;
    for (i = 0; i < count; i++) {
        DELAY(5);
        val = REG_RD(sc, MCP_REG_MCPR_NVM_COMMAND);
        if (val & MCPR_NVM_COMMAND_DONE) {
            rc = 0;
            break;
        }
    }

    if (rc == -1) {
        BLOGE(sc, "nvram write timeout expired "
            "(offset 0x%x cmd_flags 0x%x val 0x%x)\n",
            offset, cmd_flags, val);
    }

    return (rc);
}
