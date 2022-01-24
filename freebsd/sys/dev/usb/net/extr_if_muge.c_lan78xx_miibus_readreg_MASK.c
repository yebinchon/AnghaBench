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
struct muge_softc {int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_MII_ACC ; 
 int ETH_MII_ACC_MII_BUSY_ ; 
 int ETH_MII_ACC_MII_READ_ ; 
 int /*<<< orphan*/  ETH_MII_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct muge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct muge_softc*) ; 
 struct muge_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct muge_softc*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (struct muge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct muge_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct muge_softc*,char*) ; 

__attribute__((used)) static int
FUNC9(device_t dev, int phy, int reg) {

	struct muge_softc *sc = FUNC2(dev);
	int locked;
	uint32_t addr, val;

	val = 0;
	locked = FUNC7(&sc->sc_mtx);
	if (!locked)
		FUNC0(sc);

	if (FUNC4(sc, ETH_MII_ACC, ETH_MII_ACC_MII_BUSY_) !=
	    0) {
		FUNC8(sc, "MII is busy\n");
		goto done;
	}

	addr = (phy << 11) | (reg << 6) |
	    ETH_MII_ACC_MII_READ_ | ETH_MII_ACC_MII_BUSY_;
	FUNC5(sc, ETH_MII_ACC, addr);

	if (FUNC4(sc, ETH_MII_ACC, ETH_MII_ACC_MII_BUSY_) !=
	    0) {
		FUNC8(sc, "MII read timeout\n");
		goto done;
	}

	FUNC3(sc, ETH_MII_DATA, &val);
	val = FUNC6(val);

done:
	if (!locked)
		FUNC1(sc);

	return (val & 0xFFFF);
}