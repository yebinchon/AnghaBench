
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,scalar_t__) ;
 scalar_t__ BRB1_REG_PORT_NUM_OCC_BLOCKS_0 ;
 int DBG_LOAD ;
 int DELAY (int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 scalar_t__ MISC_REG_AEU_MASK_ATTN_FUNC_0 ;
 scalar_t__ NIG_REG_LLH0_BRB1_DRV_MASK ;
 scalar_t__ NIG_REG_LLH0_BRB1_NOT_MCP ;
 scalar_t__ NIG_REG_LLH1_BRB1_NOT_MCP ;
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ;
 scalar_t__ REG_RD (struct bxe_softc*,scalar_t__) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int SC_PORT (struct bxe_softc*) ;
 int bxe_link_reset (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_reset_port(struct bxe_softc *sc)
{
    int port = SC_PORT(sc);
    uint32_t val;

 ELINK_DEBUG_P0(sc, "bxe_reset_port called\n");

    bxe_link_reset(sc);

    REG_WR(sc, NIG_REG_MASK_INTERRUPT_PORT0 + port*4, 0);


    REG_WR(sc, NIG_REG_LLH0_BRB1_DRV_MASK + port*4, 0x0);

    REG_WR(sc, (port ? NIG_REG_LLH1_BRB1_NOT_MCP :
               NIG_REG_LLH0_BRB1_NOT_MCP), 0x0);


    REG_WR(sc, MISC_REG_AEU_MASK_ATTN_FUNC_0 + port*4, 0);

    DELAY(100000);


    val = REG_RD(sc, BRB1_REG_PORT_NUM_OCC_BLOCKS_0 + port*4);
    if (val) {
        BLOGD(sc, DBG_LOAD,
              "BRB1 is not empty, %d blocks are occupied\n", val);
    }


}
