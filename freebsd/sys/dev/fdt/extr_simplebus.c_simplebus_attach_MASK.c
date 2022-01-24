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
struct simplebus_softc {int /*<<< orphan*/  node; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct simplebus_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct simplebus_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct		simplebus_softc *sc;
	phandle_t	node;

	sc = FUNC3(dev);
	FUNC7(dev, 0);
	if (FUNC6(sc->node, sc) < 0) {
		FUNC4(dev, "could not get ranges\n");
		return (ENXIO);
	}

	/*
	 * In principle, simplebus could have an interrupt map, but ignore that
	 * for now
	 */

	for (node = FUNC0(sc->node); node > 0; node = FUNC1(node))
		FUNC5(dev, node, 0, NULL, -1, NULL);
	return (FUNC2(dev));
}