
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGE (struct bxe_softc*,char*,int,int) ;
 scalar_t__ CHIP_REV_IS_SLOW (struct bxe_softc*) ;
 int DELAY (int) ;
 int HW_LOCK_RESOURCE_NVRAM ;
 int MCPR_NVM_SW_ARB_ARB_ARB1 ;
 int MCPR_NVM_SW_ARB_ARB_REQ_CLR1 ;
 int MCP_REG_MCPR_NVM_SW_ARB ;
 int NVRAM_TIMEOUT_COUNT ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int SC_PORT (struct bxe_softc*) ;
 int bxe_release_hw_lock (struct bxe_softc*,int ) ;

__attribute__((used)) static int
bxe_release_nvram_lock(struct bxe_softc *sc)
{
    int port = SC_PORT(sc);
    int count, i;
    uint32_t val = 0;


    count = NVRAM_TIMEOUT_COUNT;
    if (CHIP_REV_IS_SLOW(sc)) {
        count *= 100;
    }


    REG_WR(sc, MCP_REG_MCPR_NVM_SW_ARB,
           (MCPR_NVM_SW_ARB_ARB_REQ_CLR1 << port));

    for (i = 0; i < count*10; i++) {
        val = REG_RD(sc, MCP_REG_MCPR_NVM_SW_ARB);
        if (!(val & (MCPR_NVM_SW_ARB_ARB_ARB1 << port))) {
            break;
        }

        DELAY(5);
    }

    if (val & (MCPR_NVM_SW_ARB_ARB_ARB1 << port)) {
        BLOGE(sc, "Cannot free access to nvram interface "
            "port %d val 0x%x (MCPR_NVM_SW_ARB_ARB_ARB1 << port)\n",
            port, val);
        return (-1);
    }


    bxe_release_hw_lock(sc, HW_LOCK_RESOURCE_NVRAM);

    return (0);
}
