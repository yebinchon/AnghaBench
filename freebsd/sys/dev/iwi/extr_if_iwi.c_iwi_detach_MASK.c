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
struct ieee80211com {int dummy; } ;
struct iwi_softc {int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_unr; int /*<<< orphan*/  mem; int /*<<< orphan*/  irq; int /*<<< orphan*/  rxq; int /*<<< orphan*/ * txq; int /*<<< orphan*/  cmdq; int /*<<< orphan*/  sc_monitortask; int /*<<< orphan*/  sc_disassoctask; int /*<<< orphan*/  sc_restarttask; int /*<<< orphan*/  sc_radiofftask; int /*<<< orphan*/  sc_radiontask; int /*<<< orphan*/  sc_ih; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct iwi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct iwi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct iwi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct iwi_softc *sc = FUNC4(dev);
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC2(dev, sc->irq, sc->sc_ih);

	/* NB: do early to drain any pending tasks */
	FUNC5(ic, &sc->sc_radiontask);
	FUNC5(ic, &sc->sc_radiofftask);
	FUNC5(ic, &sc->sc_restarttask);
	FUNC5(ic, &sc->sc_disassoctask);
	FUNC5(ic, &sc->sc_monitortask);

	FUNC12(sc);

	FUNC6(ic);

	FUNC10(sc);
	FUNC11(sc);

	FUNC7(sc, &sc->cmdq);
	FUNC9(sc, &sc->txq[0]);
	FUNC9(sc, &sc->txq[1]);
	FUNC9(sc, &sc->txq[2]);
	FUNC9(sc, &sc->txq[3]);
	FUNC8(sc, &sc->rxq);

	FUNC1(dev, SYS_RES_IRQ, FUNC14(sc->irq), sc->irq);

	FUNC1(dev, SYS_RES_MEMORY, FUNC14(sc->mem),
	    sc->mem);

	FUNC3(sc->sc_unr);
	FUNC13(&sc->sc_snd);

	FUNC0(sc);

	return 0;
}