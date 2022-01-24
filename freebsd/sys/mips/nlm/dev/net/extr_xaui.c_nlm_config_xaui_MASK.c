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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int NETIOR_XGMAC_RX_PFC_EN_POS ; 
 int NETIOR_XGMAC_STATS_EN_POS ; 
 int NETIOR_XGMAC_TX_PAUSE_POS ; 
 int NETIOR_XGMAC_TX_PFC_EN_POS ; 
 int NETIOR_XGMAC_VLAN_DC_POS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int XAUI_CONFIG_GENFCS ; 
 int XAUI_CONFIG_LENCHK ; 
 int XAUI_CONFIG_PAD_64 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC8(uint64_t nae_base, int nblock,
    int max_tx_frame_sz, int max_rx_frame_sz, int vlan_pri_en)
{
	uint32_t val;

	val = FUNC6(nae_base, FUNC2(nblock));
	val &= ~(0x1 << 11);	/* clear soft reset */
	FUNC7(nae_base, FUNC2(nblock), val);

	val = FUNC6(nae_base, FUNC2(nblock));
	val &= ~(0x3 << 11);	/* clear soft reset and hard reset */
	FUNC7(nae_base, FUNC2(nblock), val);
	FUNC7(nae_base, FUNC0(nblock), 0xffffffff);
	FUNC7(nae_base, FUNC0(nblock), 0);

	/* Enable tx/rx frame */
	val = 0x000010A8;
	val |= XAUI_CONFIG_LENCHK;
	val |= XAUI_CONFIG_GENFCS;
	val |= XAUI_CONFIG_PAD_64;
	FUNC7(nae_base, FUNC1(nblock), val);

	/* write max frame length */
	FUNC5(nae_base, nblock, max_tx_frame_sz,
	    max_rx_frame_sz);

	/* set stats counter */
	val = FUNC6(nae_base, FUNC2(nblock));
	val |= (0x1 << NETIOR_XGMAC_VLAN_DC_POS);
	val |= (0x1 << NETIOR_XGMAC_STATS_EN_POS);
	if (vlan_pri_en) {
		val |= (0x1 << NETIOR_XGMAC_TX_PFC_EN_POS);
		val |= (0x1 << NETIOR_XGMAC_RX_PFC_EN_POS);
		val |= (0x1 << NETIOR_XGMAC_TX_PAUSE_POS);
	} else {
		val &= ~(0x1 << NETIOR_XGMAC_TX_PFC_EN_POS);
		val |= (0x1 << NETIOR_XGMAC_TX_PAUSE_POS);
	}
	FUNC7(nae_base, FUNC2(nblock), val);
	/* configure on / off timer */
	if (vlan_pri_en)
		val = 0xF1230000; /* PFC mode, offtimer = 0xf123, ontimer = 0 */
	else
		val = 0x0000F123; /* link level FC mode, offtimer = 0xf123 */
	FUNC7(nae_base, FUNC3(nblock), val);

	/* set xaui tx threshold */
	val = FUNC6(nae_base, FUNC4(nblock));
	val &= ~(0x1f << 10);
	val |= ~(15 << 10);
	FUNC7(nae_base, FUNC4(nblock), val);
}