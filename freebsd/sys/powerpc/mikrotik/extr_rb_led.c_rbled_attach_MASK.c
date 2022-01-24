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
struct rbled_softc {int /*<<< orphan*/ * sc_led; int /*<<< orphan*/  sc_ledpin; int /*<<< orphan*/ * sc_gpio; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  gp ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 struct rbled_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,struct rbled_softc*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rbled_toggle ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct rbled_softc *sc;
	phandle_t node;
	cell_t gp[2];

	sc = FUNC2(dev);
	node = FUNC5(dev);

	if (FUNC1(node, "user_led", gp, sizeof(gp)) <= 0)
		return (ENXIO);
	
	sc->sc_gpio = FUNC0(gp[0]);
	if (sc->sc_gpio == NULL) {
		FUNC3(dev, "No GPIO resource found!\n");
		return (ENXIO);
	}
	sc->sc_ledpin = gp[1];

	sc->sc_led = FUNC4(rbled_toggle, sc, "user_led");

	if (sc->sc_led == NULL)
		return (ENXIO);

	return (0);
}