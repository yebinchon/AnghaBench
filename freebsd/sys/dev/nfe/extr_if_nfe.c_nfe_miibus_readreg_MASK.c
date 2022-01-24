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
struct nfe_softc {int mii_phyaddr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*,int,char*,...) ; 
 int NFE_PHYADD_SHIFT ; 
 int NFE_PHY_BUSY ; 
 int /*<<< orphan*/  NFE_PHY_CTL ; 
 int /*<<< orphan*/  NFE_PHY_DATA ; 
 int NFE_PHY_ERROR ; 
 int /*<<< orphan*/  NFE_PHY_STATUS ; 
 int FUNC2 (struct nfe_softc*,int /*<<< orphan*/ ) ; 
 int NFE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (struct nfe_softc*,int /*<<< orphan*/ ,int) ; 
 struct nfe_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg)
{
	struct nfe_softc *sc = FUNC4(dev);
	uint32_t val;
	int ntries;

	FUNC3(sc, NFE_PHY_STATUS, 0xf);

	if (FUNC2(sc, NFE_PHY_CTL) & NFE_PHY_BUSY) {
		FUNC3(sc, NFE_PHY_CTL, NFE_PHY_BUSY);
		FUNC0(100);
	}

	FUNC3(sc, NFE_PHY_CTL, (phy << NFE_PHYADD_SHIFT) | reg);

	for (ntries = 0; ntries < NFE_TIMEOUT; ntries++) {
		FUNC0(100);
		if (!(FUNC2(sc, NFE_PHY_CTL) & NFE_PHY_BUSY))
			break;
	}
	if (ntries == NFE_TIMEOUT) {
		FUNC1(sc, 2, "timeout waiting for PHY\n");
		return 0;
	}

	if (FUNC2(sc, NFE_PHY_STATUS) & NFE_PHY_ERROR) {
		FUNC1(sc, 2, "could not read PHY\n");
		return 0;
	}

	val = FUNC2(sc, NFE_PHY_DATA);
	if (val != 0xffffffff && val != 0)
		sc->mii_phyaddr = phy;

	FUNC1(sc, 2, "mii read phy %d reg 0x%x ret 0x%x\n", phy, reg, val);

	return (val);
}