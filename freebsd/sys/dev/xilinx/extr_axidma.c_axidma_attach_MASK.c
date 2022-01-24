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
struct axidma_softc {int /*<<< orphan*/ * ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  axidma_intr_rx ; 
 int /*<<< orphan*/  axidma_intr_tx ; 
 int /*<<< orphan*/  axidma_spec ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct axidma_softc*,int /*<<< orphan*/ *) ; 
 struct axidma_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct axidma_softc *sc;
	phandle_t xref, node;
	int err;

	sc = FUNC4(dev);
	sc->dev = dev;

	if (FUNC2(dev, axidma_spec, sc->res)) {
		FUNC5(dev, "could not allocate resources.\n");
		return (ENXIO);
	}

	/* CSR memory interface */
	sc->bst = FUNC8(sc->res[0]);
	sc->bsh = FUNC7(sc->res[0]);

	/* Setup interrupt handler */
	err = FUNC3(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, axidma_intr_tx, sc, &sc->ih[0]);
	if (err) {
		FUNC5(dev, "Unable to alloc interrupt resource.\n");
		return (ENXIO);
	}

	/* Setup interrupt handler */
	err = FUNC3(dev, sc->res[2], INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, axidma_intr_rx, sc, &sc->ih[1]);
	if (err) {
		FUNC5(dev, "Unable to alloc interrupt resource.\n");
		return (ENXIO);
	}

	node = FUNC6(dev);
	xref = FUNC1(node);
	FUNC0(xref, dev);

	return (0);
}