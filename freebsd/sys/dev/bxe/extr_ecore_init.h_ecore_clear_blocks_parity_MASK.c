#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  sts_clr_addr; } ;

/* Variables and functions */
 int AEU_INPUTS_ATTN_BITS_MCP_LATCHED_ROM_PARITY ; 
 int AEU_INPUTS_ATTN_BITS_MCP_LATCHED_SCPAD_PARITY ; 
 int AEU_INPUTS_ATTN_BITS_MCP_LATCHED_UMP_RX_PARITY ; 
 int AEU_INPUTS_ATTN_BITS_MCP_LATCHED_UMP_TX_PARITY ; 
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ CSEM_REG_FAST_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int,...) ; 
 int /*<<< orphan*/  MISC_REG_AEU_AFTER_INVERT_4_MCP ; 
 scalar_t__ MISC_REG_AEU_CLR_LATCH_SIGNAL ; 
 int FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,scalar_t__,int) ; 
 scalar_t__ SEM_FAST_REG_PARITY_RST ; 
 scalar_t__ TSEM_REG_FAST_MEMORY ; 
 scalar_t__ USEM_REG_FAST_MEMORY ; 
 scalar_t__ XSEM_REG_FAST_MEMORY ; 
 TYPE_1__* ecore_blocks_parity_data ; 
 int FUNC4 (struct bxe_softc*,int) ; 

__attribute__((used)) static inline void FUNC5(struct bxe_softc *sc)
{
	int i;
	uint32_t reg_val, mcp_aeu_bits =
		AEU_INPUTS_ATTN_BITS_MCP_LATCHED_ROM_PARITY |
		AEU_INPUTS_ATTN_BITS_MCP_LATCHED_SCPAD_PARITY |
		AEU_INPUTS_ATTN_BITS_MCP_LATCHED_UMP_RX_PARITY |
		AEU_INPUTS_ATTN_BITS_MCP_LATCHED_UMP_TX_PARITY;

	/* Clear SEM_FAST parities */
	FUNC3(sc, XSEM_REG_FAST_MEMORY + SEM_FAST_REG_PARITY_RST, 0x1);
	FUNC3(sc, TSEM_REG_FAST_MEMORY + SEM_FAST_REG_PARITY_RST, 0x1);
	FUNC3(sc, USEM_REG_FAST_MEMORY + SEM_FAST_REG_PARITY_RST, 0x1);
	FUNC3(sc, CSEM_REG_FAST_MEMORY + SEM_FAST_REG_PARITY_RST, 0x1);

	for (i = 0; i < FUNC0(ecore_blocks_parity_data); i++) {
		uint32_t reg_mask = FUNC4(sc, i);

		if (reg_mask) {
			reg_val = FUNC2(sc, ecore_blocks_parity_data[i].
					 sts_clr_addr);
			if (reg_val & reg_mask)
				FUNC1(sc,
					   "Parity errors in %s: 0x%x\n",
					   ecore_blocks_parity_data[i].name,
					   reg_val & reg_mask);
		}
	}

	/* Check if there were parity attentions in MCP */
	reg_val = FUNC2(sc, MISC_REG_AEU_AFTER_INVERT_4_MCP);
	if (reg_val & mcp_aeu_bits)
		FUNC1(sc, "Parity error in MCP: 0x%x\n",
			   reg_val & mcp_aeu_bits);

	/* Clear parity attentions in MCP:
	 * [7]  clears Latched rom_parity
	 * [8]  clears Latched ump_rx_parity
	 * [9]  clears Latched ump_tx_parity
	 * [10] clears Latched scpad_parity (both ports)
	 */
	FUNC3(sc, MISC_REG_AEU_CLR_LATCH_SIGNAL, 0x780);
}