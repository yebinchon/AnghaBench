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
struct rum_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int RT2573_BBP_BUSY ; 
 int RT2573_BBP_READ ; 
 int /*<<< orphan*/  RT2573_PHY_CSR3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 scalar_t__ FUNC2 (struct rum_softc*) ; 
 scalar_t__ FUNC3 (struct rum_softc*,int) ; 
 int FUNC4 (struct rum_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rum_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint8_t
FUNC6(struct rum_softc *sc, uint8_t reg)
{
	uint32_t val;
	int ntries;

	FUNC0(2, "reg=0x%08x\n", reg);

	if (FUNC2(sc) != 0) {
		FUNC1(sc->sc_dev, "could not read BBP\n");
		return 0;
	}

	val = RT2573_BBP_BUSY | RT2573_BBP_READ | reg << 8;
	FUNC5(sc, RT2573_PHY_CSR3, val);

	for (ntries = 0; ntries < 100; ntries++) {
		val = FUNC4(sc, RT2573_PHY_CSR3);
		if (!(val & RT2573_BBP_BUSY))
			return val & 0xff;
		if (FUNC3(sc, hz / 100))
			break;
	}

	FUNC1(sc->sc_dev, "could not read BBP\n");
	return 0;
}