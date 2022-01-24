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
struct ale_softc {int* ale_eaddr; int /*<<< orphan*/  ale_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_PAR0 ; 
 int /*<<< orphan*/  ALE_PAR1 ; 
 int /*<<< orphan*/  ALE_SPI_CTRL ; 
 int /*<<< orphan*/  ALE_TWSI_CTRL ; 
 int FUNC0 (struct ale_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ale_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PCIY_VPD ; 
 int SPI_VPD_ENB ; 
 int TWSI_CTRL_SW_LD_START ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC5(struct ale_softc *sc)
{
	uint32_t ea[2], reg;
	int i, vpdc;

	reg = FUNC0(sc, ALE_SPI_CTRL);
	if ((reg & SPI_VPD_ENB) != 0) {
		reg &= ~SPI_VPD_ENB;
		FUNC1(sc, ALE_SPI_CTRL, reg);
	}

	if (FUNC4(sc->ale_dev, PCIY_VPD, &vpdc) == 0) {
		/*
		 * PCI VPD capability found, let TWSI reload EEPROM.
		 * This will set ethernet address of controller.
		 */
		FUNC1(sc, ALE_TWSI_CTRL, FUNC0(sc, ALE_TWSI_CTRL) |
		    TWSI_CTRL_SW_LD_START);
		for (i = 100; i > 0; i--) {
			FUNC2(1000);
			reg = FUNC0(sc, ALE_TWSI_CTRL);
			if ((reg & TWSI_CTRL_SW_LD_START) == 0)
				break;
		}
		if (i == 0)
			FUNC3(sc->ale_dev,
			    "reloading EEPROM timeout!\n");
	} else {
		if (bootverbose)
			FUNC3(sc->ale_dev,
			    "PCI VPD capability not found!\n");
	}

	ea[0] = FUNC0(sc, ALE_PAR0);
	ea[1] = FUNC0(sc, ALE_PAR1);
	sc->ale_eaddr[0] = (ea[1] >> 8) & 0xFF;
	sc->ale_eaddr[1] = (ea[1] >> 0) & 0xFF;
	sc->ale_eaddr[2] = (ea[0] >> 24) & 0xFF;
	sc->ale_eaddr[3] = (ea[0] >> 16) & 0xFF;
	sc->ale_eaddr[4] = (ea[0] >> 8) & 0xFF;
	sc->ale_eaddr[5] = (ea[0] >> 0) & 0xFF;
}