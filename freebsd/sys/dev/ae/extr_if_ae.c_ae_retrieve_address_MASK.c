#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int* eaddr; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ae_softc_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int*) ; 
 int FUNC1 (TYPE_1__*,int*) ; 
 int FUNC2 () ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(ae_softc_t *sc)
{
	uint32_t eaddr[2] = {0, 0};
	int error;

	/*
	 *Check for EEPROM.
	 */
	error = FUNC1(sc, eaddr);
	if (error != 0)
		error = FUNC0(sc, eaddr);
	if (error != 0) {
		if (bootverbose)
			FUNC3(sc->dev,
			    "Generating random ethernet address.\n");
		eaddr[0] = FUNC2();

		/*
		 * Set OUI to ASUSTek COMPUTER INC.
		 */
		sc->eaddr[0] = 0x02;	/* U/L bit set. */
		sc->eaddr[1] = 0x1f;
		sc->eaddr[2] = 0xc6;
		sc->eaddr[3] = (eaddr[0] >> 16) & 0xff;
		sc->eaddr[4] = (eaddr[0] >> 8) & 0xff;
		sc->eaddr[5] = (eaddr[0] >> 0) & 0xff;
	} else {
		sc->eaddr[0] = (eaddr[1] >> 8) & 0xff;
		sc->eaddr[1] = (eaddr[1] >> 0) & 0xff;
		sc->eaddr[2] = (eaddr[0] >> 24) & 0xff;
		sc->eaddr[3] = (eaddr[0] >> 16) & 0xff;
		sc->eaddr[4] = (eaddr[0] >> 8) & 0xff;
		sc->eaddr[5] = (eaddr[0] >> 0) & 0xff;
	}
}