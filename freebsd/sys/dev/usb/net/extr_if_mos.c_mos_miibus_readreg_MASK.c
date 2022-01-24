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
typedef  int /*<<< orphan*/  uWord ;
struct mos_softc {int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mos_softc*) ; 
 int MOS_PHYCTL_PHYADDR ; 
 int MOS_PHYCTL_READ ; 
 int MOS_PHYSTS_PENDING ; 
 int MOS_PHYSTS_PHYREG ; 
 int MOS_PHYSTS_READY ; 
 int /*<<< orphan*/  MOS_PHY_CTL ; 
 int /*<<< orphan*/  MOS_PHY_DATA ; 
 int /*<<< orphan*/  MOS_PHY_STS ; 
 int MOS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct mos_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mos_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mos_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mos_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev, int phy, int reg)
{
	struct mos_softc *sc = FUNC4(dev);
	uWord val;
	int i, res, locked;

	FUNC3(val, 0);

	locked = FUNC9(&sc->sc_mtx);
	if (!locked)
		FUNC1(sc);

	FUNC8(sc, MOS_PHY_DATA, 0);
	FUNC7(sc, MOS_PHY_CTL, (phy & MOS_PHYCTL_PHYADDR) |
	    MOS_PHYCTL_READ);
	FUNC7(sc, MOS_PHY_STS, (reg & MOS_PHYSTS_PHYREG) |
	    MOS_PHYSTS_PENDING);

	for (i = 0; i < MOS_TIMEOUT; i++) {
		if (FUNC5(sc, MOS_PHY_STS) & MOS_PHYSTS_READY)
			break;
	}
	if (i == MOS_TIMEOUT) {
		FUNC0("MII read timeout");
	}
	res = FUNC6(sc, MOS_PHY_DATA);

	if (!locked)
		FUNC2(sc);
	return (res);
}