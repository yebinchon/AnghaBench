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
struct rt2560_softc {int* rf_regs; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2560_softc*,int,char*,int,int) ; 
 int FUNC2 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2560_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2560_RFCSR ; 
 int RT2560_RF_20BIT ; 
 int RT2560_RF_BUSY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct rt2560_softc *sc, uint8_t reg, uint32_t val)
{
	uint32_t tmp;
	int ntries;

	for (ntries = 0; ntries < 100; ntries++) {
		if (!(FUNC2(sc, RT2560_RFCSR) & RT2560_RF_BUSY))
			break;
		FUNC0(1);
	}
	if (ntries == 100) {
		FUNC4(sc->sc_dev, "could not write to RF\n");
		return;
	}

	tmp = RT2560_RF_BUSY | RT2560_RF_20BIT | (val & 0xfffff) << 2 |
	    (reg & 0x3);
	FUNC3(sc, RT2560_RFCSR, tmp);

	/* remember last written value in sc */
	sc->rf_regs[reg] = val;

	FUNC1(sc, 15, "RF R[%u] <- 0x%05x\n", reg & 0x3, val & 0xfffff);
}