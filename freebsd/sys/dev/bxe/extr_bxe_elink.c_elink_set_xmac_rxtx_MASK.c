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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct elink_params {struct bxe_softc* sc; scalar_t__ port; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,scalar_t__) ; 
 int GRCBASE_XMAC0 ; 
 int GRCBASE_XMAC1 ; 
 int MISC_REGISTERS_RESET_REG_2_XMAC ; 
 int MISC_REG_RESET_REG_2 ; 
 int FUNC1 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int,int) ; 
 int XMAC_CTRL_REG_RX_EN ; 
 int XMAC_CTRL_REG_TX_EN ; 
 int XMAC_REG_CTRL ; 
 int XMAC_REG_PFC_CTRL_HI ; 

__attribute__((used)) static void FUNC3(struct elink_params *params, uint8_t en)
{
	uint8_t port = params->port;
	struct bxe_softc *sc = params->sc;
	uint32_t pfc_ctrl, xmac_base = (port) ? GRCBASE_XMAC1 : GRCBASE_XMAC0;
	uint32_t val;

	if (FUNC1(sc, MISC_REG_RESET_REG_2) &
	    MISC_REGISTERS_RESET_REG_2_XMAC) {
		/* Send an indication to change the state in the NIG back to XON
		 * Clearing this bit enables the next set of this bit to get
		 * rising edge
		 */
		pfc_ctrl = FUNC1(sc, xmac_base + XMAC_REG_PFC_CTRL_HI);
		FUNC2(sc, xmac_base + XMAC_REG_PFC_CTRL_HI,
		       (pfc_ctrl & ~(1<<1)));
		FUNC2(sc, xmac_base + XMAC_REG_PFC_CTRL_HI,
		       (pfc_ctrl | (1<<1)));
		FUNC0(sc, "Disable XMAC on port %x\n", port);
		val = FUNC1(sc, xmac_base + XMAC_REG_CTRL);
		if (en)
			val |= (XMAC_CTRL_REG_TX_EN | XMAC_CTRL_REG_RX_EN);
		else
			val &= ~(XMAC_CTRL_REG_TX_EN | XMAC_CTRL_REG_RX_EN);
		FUNC2(sc, xmac_base + XMAC_REG_CTRL, val);
	}
}