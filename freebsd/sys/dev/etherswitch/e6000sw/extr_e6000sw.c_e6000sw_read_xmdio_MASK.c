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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  e6000sw_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int PHY_DATA_MASK ; 
 int /*<<< orphan*/  REG_GLOBAL2 ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  SMI_CMD_BUSY ; 
 int SMI_CMD_DEV_ADDR ; 
 int SMI_CMD_DEV_ADDR_MASK ; 
 int SMI_CMD_OP_C45_ADDR ; 
 int SMI_CMD_OP_C45_READ ; 
 int SMI_CMD_REG_ADDR_MASK ; 
 int /*<<< orphan*/  SMI_PHY_CMD_REG ; 
 int /*<<< orphan*/  SMI_PHY_DATA_REG ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int phy, int devaddr, int devreg)
{
	e6000sw_softc_t *sc;
	uint32_t reg;

	sc = FUNC2(dev);
	FUNC0(sc, SA_XLOCKED);
	if (FUNC1(sc, SMI_PHY_CMD_REG, SMI_CMD_BUSY)) {
		FUNC3(dev, "Timeout while waiting for switch\n");
		return (ETIMEDOUT);
	}

	reg = devaddr & SMI_CMD_REG_ADDR_MASK;
	reg |= (phy << SMI_CMD_DEV_ADDR) & SMI_CMD_DEV_ADDR_MASK;

	/* Load C45 register address. */
	FUNC5(sc, REG_GLOBAL2, SMI_PHY_DATA_REG, devreg);
	FUNC5(sc, REG_GLOBAL2, SMI_PHY_CMD_REG,
	    reg | SMI_CMD_OP_C45_ADDR);
	if (FUNC1(sc, SMI_PHY_CMD_REG, SMI_CMD_BUSY)) {
		FUNC3(dev, "Timeout while waiting for switch\n");
		return (ETIMEDOUT);
	}

	/* Start C45 read operation. */
	FUNC5(sc, REG_GLOBAL2, SMI_PHY_CMD_REG,
	    reg | SMI_CMD_OP_C45_READ);
	if (FUNC1(sc, SMI_PHY_CMD_REG, SMI_CMD_BUSY)) {
		FUNC3(dev, "Timeout while waiting for switch\n");
		return (ETIMEDOUT);
	}

	/* Read C45 data. */
	reg = FUNC4(sc, REG_GLOBAL2, SMI_PHY_DATA_REG);

	return (reg & PHY_DATA_MASK);
}