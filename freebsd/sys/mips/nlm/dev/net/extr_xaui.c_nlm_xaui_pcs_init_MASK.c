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
 int /*<<< orphan*/  LANE_CFG ; 
 int LANE_CFG_CPLX_0_1 ; 
 int LANE_CFG_CPLX_2_3 ; 
 int LANE_RX_CLK ; 
 int LANE_TX_CLK ; 
 int LM_XAUI ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PHY ; 
 int /*<<< orphan*/  PHYMODE_XAUI ; 
 int PHY_LANE_0_CTRL ; 
 int PHY_LANE_3_CTRL ; 
 int XAUI_LANE_FAULT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

void
FUNC6(uint64_t nae_base, int xaui_cplx_mask)
{
	int block, lane_ctrl, reg;
	int cplx_lane_enable;
	int lane_enable = 0;
	uint32_t regval;

	cplx_lane_enable = LM_XAUI |
	    (LM_XAUI << 4) |
	    (LM_XAUI << 8) |
	    (LM_XAUI << 12);

	if (xaui_cplx_mask == 0)
		return;

	/* write 0x2 to enable SGMII for all lane */
	block = 7;

	if (xaui_cplx_mask & 0x3) { /* Complexes 0, 1 */
		lane_enable = FUNC2(nae_base,
		    FUNC0(block, LANE_CFG, LANE_CFG_CPLX_0_1));
		if (xaui_cplx_mask & 0x1) { /* Complex 0 */
			lane_enable &= ~(0xFFFF);
			lane_enable |= cplx_lane_enable;
		}
		if (xaui_cplx_mask & 0x2) { /* Complex 1 */
			lane_enable &= ~(0xFFFF<<16);
			lane_enable |= (cplx_lane_enable << 16);
		}
		FUNC3(nae_base,
		    FUNC0(block, LANE_CFG, LANE_CFG_CPLX_0_1),
		    lane_enable);
	}
	lane_enable = 0;
	if (xaui_cplx_mask & 0xc) { /* Complexes 2, 3 */
		lane_enable = FUNC2(nae_base,
		    FUNC0(block, LANE_CFG, LANE_CFG_CPLX_2_3));
		if (xaui_cplx_mask & 0x4) { /* Complex 2 */
			lane_enable &= ~(0xFFFF);
			lane_enable |= cplx_lane_enable;
		}
		if (xaui_cplx_mask & 0x8) { /* Complex 3 */
			lane_enable &= ~(0xFFFF<<16);
			lane_enable |= (cplx_lane_enable << 16);
		}
		FUNC3(nae_base,
		    FUNC0(block, LANE_CFG, LANE_CFG_CPLX_2_3),
		    lane_enable);
	}

	/* Bring txpll out of reset */
	for (block = 0; block < 4; block++) {
		if ((xaui_cplx_mask & (1 << block)) == 0)
			continue;

		for (lane_ctrl = PHY_LANE_0_CTRL;
		    lane_ctrl <= PHY_LANE_3_CTRL; lane_ctrl++) {
			if (!FUNC1())
				FUNC5(nae_base,
				    block, lane_ctrl, PHYMODE_XAUI);
			else
				FUNC4(nae_base, block,
				    lane_ctrl, PHYMODE_XAUI);
		}
	}

	/* Wait for Rx & TX clock stable */
	for (block = 0; block < 4; block++) {
		if ((xaui_cplx_mask & (1 << block)) == 0)
			continue;

		for (lane_ctrl = PHY_LANE_0_CTRL;
		    lane_ctrl <= PHY_LANE_3_CTRL; lane_ctrl++) {

			reg = FUNC0(block, PHY, lane_ctrl - 4);
			/* Wait for TX clock to be set */
			do {
				regval = FUNC2(nae_base, reg);
			} while ((regval & LANE_TX_CLK) == 0);

			/* Wait for RX clock to be set */
			do {
				regval = FUNC2(nae_base, reg);
			} while ((regval & LANE_RX_CLK) == 0);

			/* Wait for XAUI Lane fault to be cleared */
			do {
				regval = FUNC2(nae_base, reg);
			} while ((regval & XAUI_LANE_FAULT) != 0);
		}
	}
}