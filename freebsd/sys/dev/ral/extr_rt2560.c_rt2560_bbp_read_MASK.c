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
struct rt2560_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2560_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2560_BBPCSR ; 
 int RT2560_BBP_BUSY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static uint8_t
FUNC4(struct rt2560_softc *sc, uint8_t reg)
{
	uint32_t val;
	int ntries;

	for (ntries = 0; ntries < 100; ntries++) {
		if (!(FUNC1(sc, RT2560_BBPCSR) & RT2560_BBP_BUSY))
			break;
		FUNC0(1);
	}
	if (ntries == 100) {
		FUNC3(sc->sc_dev, "could not read from BBP\n");
		return 0;
	}

	val = RT2560_BBP_BUSY | reg << 8;
	FUNC2(sc, RT2560_BBPCSR, val);

	for (ntries = 0; ntries < 100; ntries++) {
		val = FUNC1(sc, RT2560_BBPCSR);
		if (!(val & RT2560_BBP_BUSY))
			return val & 0xff;
		FUNC0(1);
	}

	FUNC3(sc->sc_dev, "could not read from BBP\n");
	return 0;
}