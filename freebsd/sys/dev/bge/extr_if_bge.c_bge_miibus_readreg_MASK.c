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
struct bge_softc {int bge_mi_mode; int /*<<< orphan*/  bge_phy_ape_lock; int /*<<< orphan*/  bge_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BGE_MICMD_READ ; 
 int BGE_MICOMM_BUSY ; 
 int BGE_MICOMM_READFAIL ; 
 int BGE_MIMODE_AUTOPOLL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  BGE_MI_COMM ; 
 int /*<<< orphan*/  BGE_MI_MODE ; 
 int BGE_TIMEOUT ; 
 int FUNC2 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 struct bge_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, int phy, int reg)
{
	struct bge_softc *sc;
	uint32_t val;
	int i;

	sc = FUNC7(dev);

	if (FUNC5(sc, sc->bge_phy_ape_lock) != 0)
		return (0);

	/* Clear the autopoll bit if set, otherwise may trigger PCI errors. */
	if ((sc->bge_mi_mode & BGE_MIMODE_AUTOPOLL) != 0) {
		FUNC3(sc, BGE_MI_MODE,
		    sc->bge_mi_mode & ~BGE_MIMODE_AUTOPOLL);
		FUNC4(80);
	}

	FUNC3(sc, BGE_MI_COMM, BGE_MICMD_READ | BGE_MICOMM_BUSY |
	    FUNC0(phy) | FUNC1(reg));

	/* Poll for the PHY register access to complete. */
	for (i = 0; i < BGE_TIMEOUT; i++) {
		FUNC4(10);
		val = FUNC2(sc, BGE_MI_COMM);
		if ((val & BGE_MICOMM_BUSY) == 0) {
			FUNC4(5);
			val = FUNC2(sc, BGE_MI_COMM);
			break;
		}
	}

	if (i == BGE_TIMEOUT) {
		FUNC8(sc->bge_dev,
		    "PHY read timed out (phy %d, reg %d, val 0x%08x)\n",
		    phy, reg, val);
		val = 0;
	}

	/* Restore the autopoll bit if necessary. */
	if ((sc->bge_mi_mode & BGE_MIMODE_AUTOPOLL) != 0) {
		FUNC3(sc, BGE_MI_MODE, sc->bge_mi_mode);
		FUNC4(80);
	}

	FUNC6(sc, sc->bge_phy_ape_lock);

	if (val & BGE_MICOMM_READFAIL)
		return (0);

	return (val & 0xFFFF);
}