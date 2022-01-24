#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;
struct bxe_mac_vals {int bmac_addr; int umac_addr; int xmac_addr; int emac_addr; int* bmac_val; void* umac_val; void* xmac_val; void* emac_val; } ;

/* Variables and functions */
 int BIGMAC2_REGISTER_BMAC_CONTROL ; 
 int BIGMAC_REGISTER_BMAC_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ELINK_BMAC_CONTROL_RX_ENABLE ; 
 int FALSE ; 
 int GRCBASE_UMAC0 ; 
 int GRCBASE_UMAC1 ; 
 int GRCBASE_XMAC0 ; 
 int GRCBASE_XMAC1 ; 
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ; 
 int MISC_REGISTERS_RESET_REG_2_UMAC0 ; 
 int MISC_REGISTERS_RESET_REG_2_XMAC ; 
 int MISC_REG_RESET_REG_2 ; 
 int NIG_REG_BMAC0_REGS_OUT_EN ; 
 int NIG_REG_INGRESS_BMAC0_MEM ; 
 int NIG_REG_INGRESS_BMAC1_MEM ; 
 int NIG_REG_NIG_EMAC0_EN ; 
 void* FUNC4 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int,int) ; 
 int FUNC6 (struct bxe_softc*) ; 
 int TRUE ; 
 int UMAC_REG_COMMAND_CONFIG ; 
 int XMAC_REG_CTRL ; 
 int XMAC_REG_PFC_CTRL_HI ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc,
                          struct bxe_mac_vals *vals)
{
    uint32_t val, base_addr, offset, mask, reset_reg;
    uint8_t mac_stopped = FALSE;
    uint8_t port = FUNC6(sc);
    uint32_t wb_data[2];

    /* reset addresses as they also mark which values were changed */
    vals->bmac_addr = 0;
    vals->umac_addr = 0;
    vals->xmac_addr = 0;
    vals->emac_addr = 0;

    reset_reg = FUNC4(sc, MISC_REG_RESET_REG_2);

    if (!FUNC2(sc)) {
        val = FUNC4(sc, NIG_REG_BMAC0_REGS_OUT_EN + port * 4);
        mask = MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << port;
        if ((mask & reset_reg) && val) {
            FUNC0(sc, DBG_LOAD, "Disable BMAC Rx\n");
            base_addr = FUNC6(sc) ? NIG_REG_INGRESS_BMAC1_MEM
                                    : NIG_REG_INGRESS_BMAC0_MEM;
            offset = FUNC1(sc) ? BIGMAC2_REGISTER_BMAC_CONTROL
                                    : BIGMAC_REGISTER_BMAC_CONTROL;

            /*
             * use rd/wr since we cannot use dmae. This is safe
             * since MCP won't access the bus due to the request
             * to unload, and no function on the path can be
             * loaded at this time.
             */
            wb_data[0] = FUNC4(sc, base_addr + offset);
            wb_data[1] = FUNC4(sc, base_addr + offset + 0x4);
            vals->bmac_addr = base_addr + offset;
            vals->bmac_val[0] = wb_data[0];
            vals->bmac_val[1] = wb_data[1];
            wb_data[0] &= ~ELINK_BMAC_CONTROL_RX_ENABLE;
            FUNC5(sc, vals->bmac_addr, wb_data[0]);
            FUNC5(sc, vals->bmac_addr + 0x4, wb_data[1]);
        }

        FUNC0(sc, DBG_LOAD, "Disable EMAC Rx\n");
        vals->emac_addr = NIG_REG_NIG_EMAC0_EN + FUNC6(sc)*4;
        vals->emac_val = FUNC4(sc, vals->emac_addr);
        FUNC5(sc, vals->emac_addr, 0);
        mac_stopped = TRUE;
    } else {
        if (reset_reg & MISC_REGISTERS_RESET_REG_2_XMAC) {
            FUNC0(sc, DBG_LOAD, "Disable XMAC Rx\n");
            base_addr = FUNC6(sc) ? GRCBASE_XMAC1 : GRCBASE_XMAC0;
            val = FUNC4(sc, base_addr + XMAC_REG_PFC_CTRL_HI);
            FUNC5(sc, base_addr + XMAC_REG_PFC_CTRL_HI, val & ~(1 << 1));
            FUNC5(sc, base_addr + XMAC_REG_PFC_CTRL_HI, val | (1 << 1));
            vals->xmac_addr = base_addr + XMAC_REG_CTRL;
            vals->xmac_val = FUNC4(sc, vals->xmac_addr);
            FUNC5(sc, vals->xmac_addr, 0);
            mac_stopped = TRUE;
        }

        mask = MISC_REGISTERS_RESET_REG_2_UMAC0 << port;
        if (mask & reset_reg) {
            FUNC0(sc, DBG_LOAD, "Disable UMAC Rx\n");
            base_addr = FUNC6(sc) ? GRCBASE_UMAC1 : GRCBASE_UMAC0;
            vals->umac_addr = base_addr + UMAC_REG_COMMAND_CONFIG;
            vals->umac_val = FUNC4(sc, vals->umac_addr);
            FUNC5(sc, vals->umac_addr, 0);
            mac_stopped = TRUE;
        }
    }

    if (mac_stopped) {
        FUNC3(20000);
    }
}