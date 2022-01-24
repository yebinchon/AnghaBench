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
 scalar_t__ EXT_G0_MDIO_CTRL ; 
 scalar_t__ EXT_G0_MDIO_RD_STAT ; 
 int EXT_G_MDIO_CMD_LCD ; 
 int EXT_G_MDIO_CMD_SP ; 
 int EXT_G_MDIO_DIV ; 
 int EXT_G_MDIO_DIV_WITH_HW_DIV64 ; 
 int EXT_G_MDIO_PHYADDR_POS ; 
 int EXT_G_MDIO_REGADDR_POS ; 
 int EXT_G_MDIO_STAT_MBSY ; 
 int /*<<< orphan*/  FUNC1 (int,int,scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC7(uint64_t nae_base, int bus, int block,
    int intf_type, int phyaddr, int regidx)
{
	uint32_t mdio_ld_cmd;
	uint32_t ctrlval;

	mdio_ld_cmd = FUNC5(nae_base, FUNC1(block, intf_type,
	    (EXT_G0_MDIO_CTRL + bus * 4)));
	if (mdio_ld_cmd & EXT_G_MDIO_CMD_LCD) {
		FUNC6(nae_base,
		    FUNC1(block, intf_type, (EXT_G0_MDIO_CTRL+bus*4)),
		    (mdio_ld_cmd & ~EXT_G_MDIO_CMD_LCD));
		while(FUNC5(nae_base,
		    FUNC1(block, intf_type,
		    (EXT_G0_MDIO_RD_STAT + bus * 4))) &
		    EXT_G_MDIO_STAT_MBSY);
	}

	ctrlval = EXT_G_MDIO_CMD_SP |
	    (phyaddr << EXT_G_MDIO_PHYADDR_POS) |
	    (regidx << EXT_G_MDIO_REGADDR_POS);
	if (FUNC3() || FUNC4() || FUNC2())
		ctrlval |= EXT_G_MDIO_DIV;
	else
		ctrlval |= EXT_G_MDIO_DIV_WITH_HW_DIV64;

	FUNC6(nae_base,
	    FUNC1(block, intf_type, (EXT_G0_MDIO_CTRL+bus*4)),
	    ctrlval);

	FUNC6(nae_base,
	    FUNC1(block, intf_type, (EXT_G0_MDIO_CTRL+bus*4)),
	    ctrlval | (1<<18));
	FUNC0(1000);
	/* poll master busy bit until it is not busy */
	while(FUNC5(nae_base,
	    FUNC1(block, intf_type, (EXT_G0_MDIO_RD_STAT + bus * 4))) &
	    EXT_G_MDIO_STAT_MBSY);

	FUNC6(nae_base,
	    FUNC1(block, intf_type, (EXT_G0_MDIO_CTRL+bus*4)),
	    ctrlval);

	/* Read the data back */
	return FUNC5(nae_base,
	    FUNC1(block, intf_type, (EXT_G0_MDIO_RD_STAT + bus * 4)));
}