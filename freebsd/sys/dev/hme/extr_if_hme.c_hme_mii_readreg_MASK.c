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
typedef  int u_int32_t ;
struct hme_softc {int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HME_MIFI_CFG ; 
 int /*<<< orphan*/  HME_MIFI_FO ; 
 int /*<<< orphan*/  FUNC1 (struct hme_softc*,int /*<<< orphan*/ ,int,int) ; 
 int HME_MIF_CFG_PHY ; 
 int HME_MIF_FO_DATA ; 
 int HME_MIF_FO_OPC_SHIFT ; 
 int HME_MIF_FO_PHYAD_SHIFT ; 
 int HME_MIF_FO_REGAD_SHIFT ; 
 int HME_MIF_FO_ST_SHIFT ; 
 int HME_MIF_FO_TALSB ; 
 int HME_MIF_FO_TAMSB ; 
 int FUNC2 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hme_softc*,int /*<<< orphan*/ ,int) ; 
 int HME_PHYAD_EXTERNAL ; 
 int MII_COMMAND_READ ; 
 int MII_COMMAND_START ; 
 struct hme_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int
FUNC6(device_t dev, int phy, int reg)
{
	struct hme_softc *sc;
	int n;
	u_int32_t v;

	sc = FUNC4(dev);
	/* Select the desired PHY in the MIF configuration register */
	v = FUNC2(sc, HME_MIFI_CFG);
	if (phy == HME_PHYAD_EXTERNAL)
		v |= HME_MIF_CFG_PHY;
	else
		v &= ~HME_MIF_CFG_PHY;
	FUNC3(sc, HME_MIFI_CFG, v);

	/* Construct the frame command */
	v = (MII_COMMAND_START << HME_MIF_FO_ST_SHIFT) |
	    HME_MIF_FO_TAMSB |
	    (MII_COMMAND_READ << HME_MIF_FO_OPC_SHIFT) |
	    (phy << HME_MIF_FO_PHYAD_SHIFT) |
	    (reg << HME_MIF_FO_REGAD_SHIFT);

	FUNC3(sc, HME_MIFI_FO, v);
	FUNC1(sc, HME_MIFI_FO, 4,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
	for (n = 0; n < 100; n++) {
		FUNC0(1);
		v = FUNC2(sc, HME_MIFI_FO);
		if (v & HME_MIF_FO_TALSB)
			return (v & HME_MIF_FO_DATA);
	}

	FUNC5(sc->sc_dev, "mii_read timeout\n");
	return (0);
}