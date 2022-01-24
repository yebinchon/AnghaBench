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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct ural_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int RAL_BBP_BUSY ; 
 int /*<<< orphan*/  RAL_PHY_CSR7 ; 
 int /*<<< orphan*/  RAL_PHY_CSR8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 scalar_t__ FUNC1 (struct ural_softc*,int) ; 
 int FUNC2 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ural_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct ural_softc *sc, uint8_t reg, uint8_t val)
{
	uint16_t tmp;
	int ntries;

	for (ntries = 0; ntries < 100; ntries++) {
		if (!(FUNC2(sc, RAL_PHY_CSR8) & RAL_BBP_BUSY))
			break;
		if (FUNC1(sc, hz / 100))
			break;
	}
	if (ntries == 100) {
		FUNC0(sc->sc_dev, "could not write to BBP\n");
		return;
	}

	tmp = reg << 8 | val;
	FUNC3(sc, RAL_PHY_CSR7, tmp);
}