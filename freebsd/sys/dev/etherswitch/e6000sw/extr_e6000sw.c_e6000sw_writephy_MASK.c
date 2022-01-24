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
typedef  int /*<<< orphan*/  e6000sw_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int E6000SW_NUM_PHY_REGS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int PHY_DATA_MASK ; 
 int /*<<< orphan*/  REG_GLOBAL2 ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  SMI_CMD_BUSY ; 
 int SMI_CMD_DEV_ADDR ; 
 int SMI_CMD_DEV_ADDR_MASK ; 
 int SMI_CMD_OP_C22_WRITE ; 
 int SMI_CMD_REG_ADDR_MASK ; 
 int /*<<< orphan*/  SMI_PHY_CMD_REG ; 
 int /*<<< orphan*/  SMI_PHY_DATA_REG ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int phy, int reg, int data)
{
	e6000sw_softc_t *sc;

	sc = FUNC2(dev);
	if (!FUNC4(sc, phy) || reg >= E6000SW_NUM_PHY_REGS) {
		FUNC3(dev, "Wrong register address.\n");
		return (EINVAL);
	}

	FUNC0(sc, SA_XLOCKED);
	if (FUNC1(sc, SMI_PHY_CMD_REG, SMI_CMD_BUSY)) {
		FUNC3(dev, "Timeout while waiting for switch\n");
		return (ETIMEDOUT);
	}

	FUNC5(sc, REG_GLOBAL2, SMI_PHY_DATA_REG,
	    data & PHY_DATA_MASK);
	FUNC5(sc, REG_GLOBAL2, SMI_PHY_CMD_REG,
	    SMI_CMD_OP_C22_WRITE | (reg & SMI_CMD_REG_ADDR_MASK) |
	    ((phy << SMI_CMD_DEV_ADDR) & SMI_CMD_DEV_ADDR_MASK));

	return (0);
}