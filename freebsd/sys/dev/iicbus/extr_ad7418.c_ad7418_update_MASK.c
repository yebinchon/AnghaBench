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
struct ad7418_softc {scalar_t__ sc_lastupdate; int sc_curtemp; int sc_curvolt; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7418_CHAN_TEMP ; 
 int /*<<< orphan*/  AD7418_CHAN_VOLT ; 
 int /*<<< orphan*/  AD7418_TEMP ; 
 int /*<<< orphan*/  AD7418_VOLT ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ad7418_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ticks ; 

__attribute__((used)) static void
FUNC3(struct ad7418_softc *sc)
{
	int v;

	FUNC2(&sc->sc_lock, SA_XLOCKED);
	/* NB: no point in updating any faster than the chip */
	if (ticks - sc->sc_lastupdate > hz) {
		FUNC1(sc, AD7418_CHAN_TEMP);
		v = FUNC0(sc->sc_dev, AD7418_TEMP);
		if (v >= 0)
			sc->sc_curtemp = v;
		FUNC1(sc, AD7418_CHAN_VOLT);
		v = FUNC0(sc->sc_dev, AD7418_VOLT);
		if (v >= 0)
			sc->sc_curvolt = v;
		sc->sc_lastupdate = ticks;
	}
}