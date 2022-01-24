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
struct ipw_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_firmware; int /*<<< orphan*/  mem; int /*<<< orphan*/  irq; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_wdtimer; int /*<<< orphan*/  sc_init_task; int /*<<< orphan*/  sc_ih; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ipw_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct ipw_softc *sc = FUNC3(dev);
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC1(dev, sc->irq, sc->sc_ih);

	FUNC5(ic, &sc->sc_init_task);
	FUNC8(sc);

	FUNC6(ic);

	FUNC2(&sc->sc_wdtimer);
	FUNC9(&sc->sc_snd);

	FUNC7(sc);

	FUNC0(dev, SYS_RES_IRQ, FUNC11(sc->irq), sc->irq);

	FUNC0(dev, SYS_RES_MEMORY, FUNC11(sc->mem),
	    sc->mem);

	if (sc->sc_firmware != NULL) {
		FUNC4(sc->sc_firmware, FIRMWARE_UNLOAD);
		sc->sc_firmware = NULL;
	}

	FUNC10(&sc->sc_mtx);

	return 0;
}