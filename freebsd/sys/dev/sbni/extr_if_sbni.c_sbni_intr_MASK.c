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
struct sbni_softc {struct sbni_softc* slave_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR0 ; 
 int RC_RDY ; 
 int /*<<< orphan*/  FUNC0 (struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbni_softc*) ; 
 int TR_RDY ; 
 int /*<<< orphan*/  FUNC2 (struct sbni_softc*) ; 
 int FUNC3 (struct sbni_softc*,int /*<<< orphan*/ ) ; 

void
FUNC4(void *arg)
{
	struct sbni_softc *sc;
	int repeat;

	sc = (struct sbni_softc *)arg;

	do {
		repeat = 0;
		FUNC0(sc);
		if (FUNC3(sc, CSR0) & (RC_RDY | TR_RDY)) {
			FUNC2(sc);
			repeat = 1;
		}
		FUNC1(sc);
		if (sc->slave_sc) {
			/* second channel present */
			FUNC0(sc->slave_sc);
			if (FUNC3(sc->slave_sc, CSR0) & (RC_RDY | TR_RDY)) {
				FUNC2(sc->slave_sc);
				repeat = 1;
			}
			FUNC1(sc->slave_sc);
		}
	} while (repeat);
}