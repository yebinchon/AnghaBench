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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PHY ; 
 int PHYMODE_SGMII ; 
 int PHY_LANE_CTRL_BPC_XAUI ; 
 int PHY_LANE_CTRL_PHYMODE_POS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC3(uint64_t nae_base, int block, int lane_ctrl,
    int mode)
{
	uint32_t val = 0;
	int rext_sel = 0;

	if (lane_ctrl != 4)
		rext_sel = (1 << 23);

	val = FUNC1(nae_base,
	    FUNC0(block, PHY, lane_ctrl));

	/* set comma bypass for XAUI */
	if (mode != PHYMODE_SGMII)
		val |= PHY_LANE_CTRL_BPC_XAUI;
	val |= 0x100000;
	val |= (mode << PHY_LANE_CTRL_PHYMODE_POS);
	val &= ~(0x20000);
	FUNC2(nae_base,
	    FUNC0(block, PHY, lane_ctrl), val);

	val = FUNC1(nae_base,
	    FUNC0(block, PHY, lane_ctrl));
	val |= 0x40000000;
	FUNC2(nae_base,
	    FUNC0(block, PHY, lane_ctrl), val);

	/* clear the power down bit */
	val = FUNC1(nae_base,
	    FUNC0(block, PHY, lane_ctrl));
	val &= ~( (1 << 29) | (0x7ffff));
	FUNC2(nae_base,
	    FUNC0(block, PHY, lane_ctrl), rext_sel | val);
}