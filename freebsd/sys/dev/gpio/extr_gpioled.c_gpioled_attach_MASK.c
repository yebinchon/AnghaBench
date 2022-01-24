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
struct gpioled_softc {int sc_invert; int /*<<< orphan*/  sc_leddev; int /*<<< orphan*/  sc_busdev; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpioled_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct gpioled_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpioled_control ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct gpioled_softc*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct gpioled_softc *sc;
	int state;
	const char *name;

	sc = FUNC4(dev);
	sc->sc_dev = dev;
	sc->sc_busdev = FUNC3(dev);
	FUNC0(sc);

	state = 0;

	if (FUNC8(FUNC1(dev), 
	    FUNC5(dev), "name", &name))
		name = NULL;
	FUNC7(FUNC1(dev),
	    FUNC5(dev), "invert", &sc->sc_invert);
	FUNC7(FUNC1(dev),
	    FUNC5(dev), "state", &state);

	sc->sc_leddev = FUNC6(gpioled_control, sc, name ? name :
	    FUNC2(dev), state);

	return (0);
}