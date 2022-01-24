#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct rt2860_softc {int mac_ver; int mac_rev; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_3__ {int reg; int val; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__* rt2860_def_bbp ; 
 int FUNC2 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2860_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2860_softc*) ; 

__attribute__((used)) static int
FUNC5(struct rt2860_softc *sc)
{
	int i, ntries;

	/* wait for BBP to wake up */
	for (ntries = 0; ntries < 20; ntries++) {
		uint8_t bbp0 = FUNC2(sc, 0);
		if (bbp0 != 0 && bbp0 != 0xff)
			break;
	}
	if (ntries == 20) {
		FUNC0(sc->sc_dev,
		    "timeout waiting for BBP to wake up\n");
		return (ETIMEDOUT);
	}

	/* initialize BBP registers to default values */
	if (sc->mac_ver >= 0x5390)
		FUNC4(sc);
	else {
		for (i = 0; i < FUNC1(rt2860_def_bbp); i++) {
			FUNC3(sc, rt2860_def_bbp[i].reg,
			    rt2860_def_bbp[i].val);
		}
	}

	/* fix BBP84 for RT2860E */
	if (sc->mac_ver == 0x2860 && sc->mac_rev != 0x0101)
		FUNC3(sc, 84, 0x19);

	if (sc->mac_ver >= 0x3071) {
		FUNC3(sc, 79, 0x13);
		FUNC3(sc, 80, 0x05);
		FUNC3(sc, 81, 0x33);
	} else if (sc->mac_ver == 0x2860 && sc->mac_rev == 0x0100) {
		FUNC3(sc, 69, 0x16);
		FUNC3(sc, 73, 0x12);
	}

	return 0;
}