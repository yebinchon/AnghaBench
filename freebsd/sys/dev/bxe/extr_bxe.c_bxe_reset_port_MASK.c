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
typedef  scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ BRB1_REG_PORT_NUM_OCC_BLOCKS_0 ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 scalar_t__ MISC_REG_AEU_MASK_ATTN_FUNC_0 ; 
 scalar_t__ NIG_REG_LLH0_BRB1_DRV_MASK ; 
 scalar_t__ NIG_REG_LLH0_BRB1_NOT_MCP ; 
 scalar_t__ NIG_REG_LLH1_BRB1_NOT_MCP ; 
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ; 
 scalar_t__ FUNC3 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,scalar_t__,int) ; 
 int FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc)
{
    int port = FUNC5(sc);
    uint32_t val;

	FUNC2(sc, "bxe_reset_port called\n");
    /* reset physical Link */
    FUNC6(sc);

    FUNC4(sc, NIG_REG_MASK_INTERRUPT_PORT0 + port*4, 0);

    /* Do not rcv packets to BRB */
    FUNC4(sc, NIG_REG_LLH0_BRB1_DRV_MASK + port*4, 0x0);
    /* Do not direct rcv packets that are not for MCP to the BRB */
    FUNC4(sc, (port ? NIG_REG_LLH1_BRB1_NOT_MCP :
               NIG_REG_LLH0_BRB1_NOT_MCP), 0x0);

    /* Configure AEU */
    FUNC4(sc, MISC_REG_AEU_MASK_ATTN_FUNC_0 + port*4, 0);

    FUNC1(100000);

    /* Check for BRB port occupancy */
    val = FUNC3(sc, BRB1_REG_PORT_NUM_OCC_BLOCKS_0 + port*4);
    if (val) {
        FUNC0(sc, DBG_LOAD,
              "BRB1 is not empty, %d blocks are occupied\n", val);
    }

    /* TODO: Close Doorbell port? */
}