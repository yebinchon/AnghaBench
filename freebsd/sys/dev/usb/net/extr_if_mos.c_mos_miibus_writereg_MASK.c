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
struct mos_softc {int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mos_softc*) ; 
 int MOS_PHYCTL_PHYADDR ; 
 int MOS_PHYCTL_WRITE ; 
 int MOS_PHYSTS_PENDING ; 
 int MOS_PHYSTS_PHYREG ; 
 int MOS_PHYSTS_READY ; 
 int /*<<< orphan*/  MOS_PHY_CTL ; 
 int /*<<< orphan*/  MOS_PHY_DATA ; 
 int /*<<< orphan*/  MOS_PHY_STS ; 
 int MOS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct mos_softc*) ; 
 struct mos_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mos_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mos_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t dev, int phy, int reg, int val)
{
	struct mos_softc *sc = FUNC3(dev);
	int i, locked;

	locked = FUNC7(&sc->sc_mtx);
	if (!locked)
		FUNC1(sc);

	FUNC6(sc, MOS_PHY_DATA, val);
	FUNC5(sc, MOS_PHY_CTL, (phy & MOS_PHYCTL_PHYADDR) |
	    MOS_PHYCTL_WRITE);
	FUNC5(sc, MOS_PHY_STS, (reg & MOS_PHYSTS_PHYREG) |
	    MOS_PHYSTS_PENDING);

	for (i = 0; i < MOS_TIMEOUT; i++) {
		if (FUNC4(sc, MOS_PHY_STS) & MOS_PHYSTS_READY)
			break;
	}
	if (i == MOS_TIMEOUT)
		FUNC0("MII write timeout");

	if (!locked)
		FUNC2(sc);
	return 0;
}