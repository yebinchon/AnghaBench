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
typedef  int uint32_t ;
struct rum_softc {int* rf_regs; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int /*<<< orphan*/  RT2573_PHY_CSR4 ; 
 int RT2573_RF_20BIT ; 
 int RT2573_RF_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 scalar_t__ FUNC2 (struct rum_softc*,int) ; 
 int FUNC3 (struct rum_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rum_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct rum_softc *sc, uint8_t reg, uint32_t val)
{
	uint32_t tmp;
	int ntries;

	for (ntries = 0; ntries < 100; ntries++) {
		if (!(FUNC3(sc, RT2573_PHY_CSR4) & RT2573_RF_BUSY))
			break;
		if (FUNC2(sc, hz / 100))
			break;
	}
	if (ntries == 100) {
		FUNC1(sc->sc_dev, "could not write to RF\n");
		return;
	}

	tmp = RT2573_RF_BUSY | RT2573_RF_20BIT | (val & 0xfffff) << 2 |
	    (reg & 3);
	FUNC4(sc, RT2573_PHY_CSR4, tmp);

	/* remember last written value in sc */
	sc->rf_regs[reg] = val;

	FUNC0(15, "RF R[%u] <- 0x%05x\n", reg & 3, val & 0xfffff);
}