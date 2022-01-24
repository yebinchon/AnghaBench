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
struct ath_softc {int sc_invalid; scalar_t__ sc_eepromdata; int /*<<< orphan*/  sc_dmat; } ;
struct ath_ahb_softc {int /*<<< orphan*/  sc_sr; int /*<<< orphan*/  sc_irq; int /*<<< orphan*/  sc_ih; struct ath_softc sc_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath_ahb_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct ath_ahb_softc *psc = FUNC11(dev);
	struct ath_softc *sc = &psc->sc_sc;

	/* check if device was removed */
	sc->sc_invalid = !FUNC6(dev);

	FUNC5(sc);

	FUNC8(dev);
	FUNC10(dev, psc->sc_irq, psc->sc_ih);
	FUNC9(dev, SYS_RES_IRQ, 0, psc->sc_irq);

	FUNC7(sc->sc_dmat);
	FUNC9(dev, SYS_RES_MEMORY, 0, psc->sc_sr);
	/* XXX?! */
	if (sc->sc_eepromdata)
		FUNC12(sc->sc_eepromdata, M_TEMP);

	FUNC3(sc);
	FUNC2(sc);
	FUNC4(sc);
	FUNC1(sc);
	FUNC0(sc);

	return (0);
}