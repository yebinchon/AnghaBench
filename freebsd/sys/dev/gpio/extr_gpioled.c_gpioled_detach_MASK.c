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
struct gpioled_softc {int /*<<< orphan*/ * sc_leddev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpioled_softc*) ; 
 struct gpioled_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct gpioled_softc *sc;

	sc = FUNC1(dev);
	if (sc->sc_leddev) {
		FUNC2(sc->sc_leddev);
		sc->sc_leddev = NULL;
	}
	FUNC0(sc);
	return (0);
}