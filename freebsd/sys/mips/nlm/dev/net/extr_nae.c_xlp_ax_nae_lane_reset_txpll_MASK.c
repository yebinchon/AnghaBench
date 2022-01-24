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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PHY ; 
 int PHYMODE_SGMII ; 
 int PHY_LANE_0_CTRL ; 
 int PHY_LANE_CTRL_ADDR_POS ; 
 int PHY_LANE_CTRL_BPC_XAUI ; 
 int PHY_LANE_CTRL_CMD_PENDING ; 
 int PHY_LANE_CTRL_CMD_READ ; 
 int PHY_LANE_CTRL_CMD_START ; 
 int PHY_LANE_CTRL_CMD_WRITE ; 
 int PHY_LANE_CTRL_PHYMODE_POS ; 
 int PHY_LANE_CTRL_PWRDOWN ; 
 int PHY_LANE_CTRL_RST ; 
 int PHY_LANE_STAT_PCR ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC4(uint64_t nae_base, int block, int lane_ctrl,
    int mode)
{
	uint32_t val = 0, saved_data;
	int rext_sel = 0;

	val = PHY_LANE_CTRL_RST |
	    PHY_LANE_CTRL_PWRDOWN |
	    (mode << PHY_LANE_CTRL_PHYMODE_POS);

	/* set comma bypass for XAUI */
	if (mode != PHYMODE_SGMII)
		val |= PHY_LANE_CTRL_BPC_XAUI;

	FUNC3(nae_base, FUNC1(block, PHY, lane_ctrl), val);

	if (lane_ctrl != 4) {
		rext_sel = (1 << 23);
		if (mode != PHYMODE_SGMII)
			rext_sel |= PHY_LANE_CTRL_BPC_XAUI;

		val = FUNC2(nae_base,
		    FUNC1(block, PHY, lane_ctrl));
		val &= ~PHY_LANE_CTRL_RST;
		val |= rext_sel;

		/* Resetting PMA for non-zero lanes */
		FUNC3(nae_base,
		    FUNC1(block, PHY, lane_ctrl), val);

		FUNC0(20000);	/* 20 ms delay, XXXJC: needed? */

		val |= PHY_LANE_CTRL_RST;
		FUNC3(nae_base,
		    FUNC1(block, PHY, lane_ctrl), val);

		val = 0;
	}

	/* Come out of reset for TXPLL */
	saved_data = FUNC2(nae_base,
	    FUNC1(block, PHY, lane_ctrl)) & 0xFFC00000;

	FUNC3(nae_base,
	    FUNC1(block, PHY, lane_ctrl),
	    (0x66 << PHY_LANE_CTRL_ADDR_POS)
	    | PHY_LANE_CTRL_CMD_READ
	    | PHY_LANE_CTRL_CMD_START
	    | PHY_LANE_CTRL_RST
	    | rext_sel
	    | val );

	while (((val = FUNC2(nae_base,
	    FUNC1(block, PHY, lane_ctrl))) &
	    PHY_LANE_CTRL_CMD_PENDING));

	val &= 0xFF;
	/* set bit[4] to 0 */
	val &= ~(1 << 4);
	FUNC3(nae_base,
	    FUNC1(block, PHY, lane_ctrl),
	    (0x66 << PHY_LANE_CTRL_ADDR_POS)
	    | PHY_LANE_CTRL_CMD_WRITE
	    | PHY_LANE_CTRL_CMD_START
	    | (0x0 << 19) /* (0x4 << 19) */
	    | rext_sel
	    | saved_data
	    | val );

	/* re-do */
	FUNC3(nae_base,
	    FUNC1(block, PHY, lane_ctrl),
	    (0x66 << PHY_LANE_CTRL_ADDR_POS)
	    | PHY_LANE_CTRL_CMD_WRITE
	    | PHY_LANE_CTRL_CMD_START
	    | (0x0 << 19) /* (0x4 << 19) */
	    | rext_sel
	    | saved_data
	    | val );

	while (!((val = FUNC2(nae_base,
	    FUNC1(block, PHY, (lane_ctrl - PHY_LANE_0_CTRL)))) &
	    PHY_LANE_STAT_PCR));

	/* Clear the Power Down bit */
	val = FUNC2(nae_base, FUNC1(block, PHY, lane_ctrl));
	val &= ~((1 << 29) | (0x7ffff));
	FUNC3(nae_base, FUNC1(block, PHY, lane_ctrl),
	    (rext_sel | val));
}