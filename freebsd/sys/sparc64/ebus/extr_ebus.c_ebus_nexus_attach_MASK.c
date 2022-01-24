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
struct ebus_softc {int sc_nrange; int /*<<< orphan*/  sc_range; int /*<<< orphan*/  sc_ign; } ;
struct ebus_nexus_ranges {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 struct ebus_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ebus_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct ebus_softc *sc;
	phandle_t node;

	sc = FUNC2(dev);
	node = FUNC5(dev);

#ifndef SUN4V
	if (FUNC0(node, "portid", &sc->sc_ign,
	    sizeof(sc->sc_ign)) == -1) {
		FUNC3(dev, "could not determine IGN");
		return (ENXIO);
	}
#endif

	sc->sc_nrange = FUNC1(node, "ranges",
	    sizeof(struct ebus_nexus_ranges), &sc->sc_range);
	if (sc->sc_nrange == -1) {
		FUNC3(dev, "could not get ranges property\n");
		return (ENXIO);
	}
	return (FUNC4(dev, sc, node));
}