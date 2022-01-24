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
struct cs4231_softc {int sc_nires; int sc_nmres; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/ ** sc_res; int /*<<< orphan*/ * sc_rid; int /*<<< orphan*/  sc_dev; scalar_t__* sc_dmat; int /*<<< orphan*/ ** sc_irqres; int /*<<< orphan*/ * sc_irqrid; int /*<<< orphan*/ ** sc_ih; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct cs4231_softc *sc)
{
	int i;

	FUNC0(sc);
	FUNC5(sc);
	FUNC1(sc);
	for (i = 0; i < sc->sc_nires; i++) {
		if (sc->sc_irqres[i]) {
			if (sc->sc_ih[i]) {
				FUNC4(sc->sc_dev, sc->sc_irqres[i],
				    sc->sc_ih[i]);
				sc->sc_ih[i] = NULL;
			}
			FUNC3(sc->sc_dev, SYS_RES_IRQ,
			    sc->sc_irqrid[i], sc->sc_irqres[i]);
			sc->sc_irqres[i] = NULL;
		}
	}
	for (i = 0; i < sc->sc_nires; i++) {
		if (sc->sc_dmat[i])
			FUNC2(sc->sc_dmat[i]);
	}
	for (i = 0; i < sc->sc_nmres; i++) {
		if (sc->sc_res[i])
			FUNC3(sc->sc_dev, SYS_RES_MEMORY,
			    sc->sc_rid[i], sc->sc_res[i]);
	}
	FUNC7(sc->sc_lock);
	FUNC6(sc, M_DEVBUF);
}