
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int MCPR_NVM_ACCESS_ENABLE_EN ;
 int MCPR_NVM_ACCESS_ENABLE_WR_EN ;
 int MCP_REG_MCPR_NVM_ACCESS_ENABLE ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;

__attribute__((used)) static void
bxe_disable_nvram_access(struct bxe_softc *sc)
{
    uint32_t val;

    val = REG_RD(sc, MCP_REG_MCPR_NVM_ACCESS_ENABLE);


    REG_WR(sc, MCP_REG_MCPR_NVM_ACCESS_ENABLE,
           (val & ~(MCPR_NVM_ACCESS_ENABLE_EN |
                    MCPR_NVM_ACCESS_ENABLE_WR_EN)));
}
