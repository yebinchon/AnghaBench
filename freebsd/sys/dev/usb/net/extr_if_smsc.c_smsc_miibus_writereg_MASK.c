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
struct smsc_softc {int sc_phyno; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smsc_softc*) ; 
 int /*<<< orphan*/  SMSC_MII_ADDR ; 
 int SMSC_MII_BUSY ; 
 int /*<<< orphan*/  SMSC_MII_DATA ; 
 int SMSC_MII_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct smsc_softc*) ; 
 struct smsc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct smsc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct smsc_softc*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct smsc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev, int phy, int reg, int val)
{
	struct smsc_softc *sc = FUNC2(dev);
	int locked;
	uint32_t addr;

	if (sc->sc_phyno != phy)
		return (0);

	locked = FUNC4(&sc->sc_mtx);
	if (!locked)
		FUNC0(sc);

	if (FUNC5(sc, SMSC_MII_ADDR, SMSC_MII_BUSY) != 0) {
		FUNC6(sc, "MII is busy\n");
		goto done;
	}

	val = FUNC3(val);
	FUNC7(sc, SMSC_MII_DATA, val);

	addr = (phy << 11) | (reg << 6) | SMSC_MII_WRITE | SMSC_MII_BUSY;
	FUNC7(sc, SMSC_MII_ADDR, addr);

	if (FUNC5(sc, SMSC_MII_ADDR, SMSC_MII_BUSY) != 0)
		FUNC6(sc, "MII write timeout\n");

done:
	if (!locked)
		FUNC1(sc);
	return (0);
}