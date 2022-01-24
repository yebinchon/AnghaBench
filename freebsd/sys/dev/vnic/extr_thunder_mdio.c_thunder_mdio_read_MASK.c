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
typedef  int uint64_t ;
struct thunder_mdio_softc {scalar_t__ mode; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MODE_IEEE_C22 ; 
 int /*<<< orphan*/  SMI_CMD ; 
 int SMI_CMD_PHY_ADR_MASK ; 
 int SMI_CMD_PHY_ADR_SHIFT ; 
 int SMI_CMD_PHY_OP_C22_READ ; 
 int SMI_CMD_PHY_OP_C45_READ ; 
 int SMI_CMD_PHY_REG_ADR_MASK ; 
 int SMI_CMD_PHY_REG_ADR_SHIFT ; 
 int /*<<< orphan*/  SMI_RD_DAT ; 
 int SMI_RD_DAT_DAT_MASK ; 
 int SMI_RD_DAT_PENDING ; 
 int SMI_RD_DAT_VAL ; 
 struct thunder_mdio_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thunder_mdio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thunder_mdio_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct thunder_mdio_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thunder_mdio_softc*,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int phy, int reg)
{
	struct thunder_mdio_softc *sc;
	uint64_t smi_cmd, smi_rd_dat;
	ssize_t timeout;
	int err;

	sc = FUNC1(dev);

	/* XXX Always C22 - for <= 1Gbps only */
	FUNC5(sc, MODE_IEEE_C22);

	/*
	 * Assemble command
	 */
	smi_cmd = 0;
	/* Set opcode */
	if (sc->mode == MODE_IEEE_C22)
		smi_cmd |= SMI_CMD_PHY_OP_C22_READ;
	else {
		smi_cmd |= SMI_CMD_PHY_OP_C45_READ;
		err = FUNC4(sc, phy, reg);
		if (err != 0)
			return (err);

		reg = (reg >> 16) & 0x1F;
	}

	/* Set PHY address */
	smi_cmd |= ((phy << SMI_CMD_PHY_ADR_SHIFT) & SMI_CMD_PHY_ADR_MASK);
	/* Set PHY register offset */
	smi_cmd |= ((reg << SMI_CMD_PHY_REG_ADR_SHIFT) &
	    SMI_CMD_PHY_REG_ADR_MASK);

	FUNC3(sc, SMI_CMD, smi_cmd);
	for (timeout = 1000; timeout > 0; timeout--) {
		smi_rd_dat = FUNC2(sc, SMI_RD_DAT);
		if (smi_rd_dat & SMI_RD_DAT_PENDING)
			FUNC0(1000);
		else
			break;
	}

	if (smi_rd_dat & SMI_RD_DAT_VAL)
		return (smi_rd_dat & SMI_RD_DAT_DAT_MASK);
	else {
		/* Return 0 on error */
		return (0);
	}
}