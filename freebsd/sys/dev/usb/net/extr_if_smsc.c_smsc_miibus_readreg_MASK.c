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
struct smsc_softc {int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smsc_softc*) ; 
 int /*<<< orphan*/  SMSC_MII_ADDR ; 
 int SMSC_MII_BUSY ; 
 int /*<<< orphan*/  SMSC_MII_DATA ; 
 int SMSC_MII_READ ; 
 int /*<<< orphan*/  FUNC1 (struct smsc_softc*) ; 
 struct smsc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc_softc*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (struct smsc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct smsc_softc*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct smsc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, int phy, int reg)
{
	struct smsc_softc *sc = FUNC2(dev);
	int locked;
	uint32_t addr;
	uint32_t val = 0;

	locked = FUNC4(&sc->sc_mtx);
	if (!locked)
		FUNC0(sc);

	if (FUNC6(sc, SMSC_MII_ADDR, SMSC_MII_BUSY) != 0) {
		FUNC7(sc, "MII is busy\n");
		goto done;
	}

	addr = (phy << 11) | (reg << 6) | SMSC_MII_READ | SMSC_MII_BUSY;
	FUNC8(sc, SMSC_MII_ADDR, addr);

	if (FUNC6(sc, SMSC_MII_ADDR, SMSC_MII_BUSY) != 0)
		FUNC7(sc, "MII read timeout\n");

	FUNC5(sc, SMSC_MII_DATA, &val);
	val = FUNC3(val);
	
done:
	if (!locked)
		FUNC1(sc);

	return (val & 0xFFFF);
}