#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  ue_dev; } ;
struct aue_softc {int sc_flags; TYPE_1__ sc_ue; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AUE_FLAG_DUAL_PHY ; 
 int /*<<< orphan*/  FUNC0 (struct aue_softc*) ; 
 int AUE_PHYCTL_DONE ; 
 int AUE_PHYCTL_READ ; 
 int /*<<< orphan*/  AUE_PHY_ADDR ; 
 int /*<<< orphan*/  AUE_PHY_CTL ; 
 int /*<<< orphan*/  AUE_PHY_DATA ; 
 int AUE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct aue_softc*) ; 
 int FUNC2 (struct aue_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct aue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aue_softc*,int /*<<< orphan*/ ,int) ; 
 struct aue_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, int phy, int reg)
{
	struct aue_softc *sc = FUNC5(dev);
	int i, locked;
	uint16_t val = 0;

	locked = FUNC7(&sc->sc_mtx);
	if (!locked)
		FUNC0(sc);

	/*
	 * The Am79C901 HomePNA PHY actually contains two transceivers: a 1Mbps
	 * HomePNA PHY and a 10Mbps full/half duplex ethernet PHY with NWAY
	 * autoneg. However in the ADMtek adapter, only the 1Mbps PHY is
	 * actually connected to anything, so we ignore the 10Mbps one. It
	 * happens to be configured for MII address 3, so we filter that out.
	 */
	if (sc->sc_flags & AUE_FLAG_DUAL_PHY) {
		if (phy == 3)
			goto done;
#if 0
		if (phy != 1)
			goto done;
#endif
	}
	FUNC4(sc, AUE_PHY_ADDR, phy);
	FUNC4(sc, AUE_PHY_CTL, reg | AUE_PHYCTL_READ);

	for (i = 0; i != AUE_TIMEOUT; i++) {
		if (FUNC2(sc, AUE_PHY_CTL) & AUE_PHYCTL_DONE)
			break;
		if (FUNC8(&sc->sc_ue, hz / 100))
			break;
	}

	if (i == AUE_TIMEOUT)
		FUNC6(sc->sc_ue.ue_dev, "MII read timed out\n");

	val = FUNC3(sc, AUE_PHY_DATA);

done:
	if (!locked)
		FUNC1(sc);
	return (val);
}