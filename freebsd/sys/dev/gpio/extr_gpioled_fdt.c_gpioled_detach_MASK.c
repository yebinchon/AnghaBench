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
struct gpioleds_softc {int sc_total_leds; int /*<<< orphan*/ * sc_leds; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 struct gpioleds_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct gpioleds_softc *sc;
	int i;

	sc = FUNC0(dev);

	for (i = 0; i < sc->sc_total_leds; i++)
		FUNC2(&sc->sc_leds[i]);

	if (sc->sc_leds)
		FUNC1(sc->sc_leds, M_DEVBUF);

	return (0);
}