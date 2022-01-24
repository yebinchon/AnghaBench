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
struct wi_softc {int wi_gone; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  wi_intrhand; int /*<<< orphan*/  irq; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wi_softc*,int /*<<< orphan*/ ) ; 

int
FUNC10(device_t dev)
{
	struct wi_softc	*sc = FUNC4(dev);
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC0(sc);

	/* check if device was removed */
	sc->wi_gone |= !FUNC2(dev);

	FUNC9(sc, 0);
	FUNC1(sc);
	FUNC5(ic);

	FUNC3(dev, sc->irq, sc->wi_intrhand);
	FUNC8(dev);
	FUNC6(&sc->sc_snd);
	FUNC7(&sc->sc_mtx);
	return (0);
}