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
 int FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT3070_RF_CSR_CFG ; 
 int RT3070_RF_KICK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static uint8_t
FUNC4(struct rt2860_softc *sc, uint8_t reg)
{
	uint32_t tmp;
	int ntries;

	for (ntries = 0; ntries < 100; ntries++) {
		if (!(FUNC1(sc, RT3070_RF_CSR_CFG) & RT3070_RF_KICK))
			break;
		FUNC0(1);
	}
	if (ntries == 100) {
		FUNC3(sc->sc_dev, "could not read RF register\n");
		return 0xff;
	}
	tmp = RT3070_RF_KICK | reg << 8;
	FUNC2(sc, RT3070_RF_CSR_CFG, tmp);

	for (ntries = 0; ntries < 100; ntries++) {
		tmp = FUNC1(sc, RT3070_RF_CSR_CFG);
		if (!(tmp & RT3070_RF_KICK))
			break;
		FUNC0(1);
	}
	if (ntries == 100) {
		FUNC3(sc->sc_dev, "could not read RF register\n");
		return 0xff;
	}
	return tmp & 0xff;
}