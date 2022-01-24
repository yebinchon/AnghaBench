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
struct TYPE_2__ {int /*<<< orphan*/  ue_dev; } ;
struct aue_softc {TYPE_1__ sc_ue; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aue_softc*) ; 
 int AUE_PHYCTL_DONE ; 
 int AUE_PHYCTL_WRITE ; 
 int /*<<< orphan*/  AUE_PHY_ADDR ; 
 int /*<<< orphan*/  AUE_PHY_CTL ; 
 int /*<<< orphan*/  AUE_PHY_DATA ; 
 int AUE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct aue_softc*) ; 
 int FUNC2 (struct aue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aue_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aue_softc*,int /*<<< orphan*/ ,int) ; 
 struct aue_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, int phy, int reg, int data)
{
	struct aue_softc *sc = FUNC5(dev);
	int i;
	int locked;

	if (phy == 3)
		return (0);

	locked = FUNC7(&sc->sc_mtx);
	if (!locked)
		FUNC0(sc);

	FUNC4(sc, AUE_PHY_DATA, data);
	FUNC3(sc, AUE_PHY_ADDR, phy);
	FUNC3(sc, AUE_PHY_CTL, reg | AUE_PHYCTL_WRITE);

	for (i = 0; i != AUE_TIMEOUT; i++) {
		if (FUNC2(sc, AUE_PHY_CTL) & AUE_PHYCTL_DONE)
			break;
		if (FUNC8(&sc->sc_ue, hz / 100))
			break;
	}

	if (i == AUE_TIMEOUT)
		FUNC6(sc->sc_ue.ue_dev, "MII write timed out\n");

	if (!locked)
		FUNC1(sc);
	return (0);
}