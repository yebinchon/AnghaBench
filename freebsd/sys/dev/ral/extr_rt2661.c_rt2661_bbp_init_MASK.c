#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct rt2661_softc {TYPE_1__* bbp_prom; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_5__ {scalar_t__ reg; int /*<<< orphan*/  val; } ;
struct TYPE_4__ {scalar_t__ reg; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2661_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* rt2661_def_bbp ; 

__attribute__((used)) static int
FUNC5(struct rt2661_softc *sc)
{
	int i, ntries;
	uint8_t val;

	/* wait for BBP to be ready */
	for (ntries = 0; ntries < 100; ntries++) {
		val = FUNC3(sc, 0);
		if (val != 0 && val != 0xff)
			break;
		FUNC0(100);
	}
	if (ntries == 100) {
		FUNC1(sc->sc_dev, "timeout waiting for BBP\n");
		return EIO;
	}

	/* initialize BBP registers to default values */
	for (i = 0; i < FUNC2(rt2661_def_bbp); i++) {
		FUNC4(sc, rt2661_def_bbp[i].reg,
		    rt2661_def_bbp[i].val);
	}

	/* write vendor-specific BBP values (from EEPROM) */
	for (i = 0; i < 16; i++) {
		if (sc->bbp_prom[i].reg == 0)
			continue;
		FUNC4(sc, sc->bbp_prom[i].reg, sc->bbp_prom[i].val);
	}

	return 0;
}