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
typedef  int u_int8_t ;
struct cs4231_softc {scalar_t__ sc_enabled; int sc_flags; int /*<<< orphan*/  sc_rch; int /*<<< orphan*/  sc_pch; } ;

/* Variables and functions */
 int /*<<< orphan*/  APC_CSR ; 
 int /*<<< orphan*/  APC_CSR_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct cs4231_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs4231_softc*) ; 
 int CS4231_SBUS ; 
 int /*<<< orphan*/  FUNC3 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  CS_PIN_CONTROL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  FUNC5 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct cs4231_softc *sc)
{
	u_int8_t v;

	FUNC2(sc);

	if (sc->sc_enabled == 0)
		return;
	sc->sc_enabled = 0;
	FUNC3(sc);
	FUNC6(&sc->sc_pch);
	FUNC6(&sc->sc_rch);
	FUNC1(sc);
	v = FUNC7(sc, CS_PIN_CONTROL) & ~INTERRUPT_ENABLE;
	FUNC8(sc, CS_PIN_CONTROL, v);

	if ((sc->sc_flags & CS4231_SBUS) != 0) {
		FUNC0(sc, APC_CSR, APC_CSR_RESET);
		FUNC4(10);
		FUNC0(sc, APC_CSR, 0);
		FUNC4(10);
	} else
		FUNC5(sc);
}