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
struct rt2860_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*) ; 
 int FUNC2 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2860_BBP_CSR_KICK ; 
 int RT2860_BBP_CSR_READ ; 
 int RT2860_BBP_RW_PARALLEL ; 
 int /*<<< orphan*/  RT2860_H2M_BBPAGENT ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_BBP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2860_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint8_t
FUNC6(struct rt2860_softc *sc, uint8_t reg)
{
	uint32_t val;
	int ntries;

	for (ntries = 0; ntries < 100; ntries++) {
		if (!(FUNC2(sc, RT2860_H2M_BBPAGENT) & RT2860_BBP_CSR_KICK))
			break;
		FUNC0(1);
	}
	if (ntries == 100) {
		FUNC4(sc->sc_dev,
		    "could not read from BBP through MCU\n");
		return 0;
	}

	FUNC3(sc, RT2860_H2M_BBPAGENT, RT2860_BBP_RW_PARALLEL |
	    RT2860_BBP_CSR_KICK | RT2860_BBP_CSR_READ | reg << 8);
	FUNC1(sc);

	FUNC5(sc, RT2860_MCU_CMD_BBP, 0, 0);
	FUNC0(1000);

	for (ntries = 0; ntries < 100; ntries++) {
		val = FUNC2(sc, RT2860_H2M_BBPAGENT);
		if (!(val & RT2860_BBP_CSR_KICK))
			return val & 0xff;
		FUNC0(1);
	}
	FUNC4(sc->sc_dev, "could not read from BBP through MCU\n");

	return 0;
}