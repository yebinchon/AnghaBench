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
 scalar_t__ EXT_G0_MDIO_CTRL ; 
 int EXT_G_MDIO_DIV ; 
 int EXT_G_MDIO_DIV_WITH_HW_DIV64 ; 
 int EXT_G_MDIO_MMRST ; 
 int /*<<< orphan*/  FUNC0 (int,int,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC6(uint64_t nae_base, int bus, int block,
    int intf_type)
{
	uint32_t ctrlval;

	ctrlval = FUNC4(nae_base,
	    FUNC0(block, intf_type, (EXT_G0_MDIO_CTRL+bus*4)));

	if (FUNC2() || FUNC3() || FUNC1())
		ctrlval |= EXT_G_MDIO_DIV;
	else
		ctrlval |= EXT_G_MDIO_DIV_WITH_HW_DIV64;

	FUNC5(nae_base,
	    FUNC0(block, intf_type, (EXT_G0_MDIO_CTRL + bus * 4)),
	    EXT_G_MDIO_MMRST | ctrlval);
	FUNC5(nae_base,
	    FUNC0(block, intf_type, (EXT_G0_MDIO_CTRL + bus * 4)), ctrlval);
	return (0);
}