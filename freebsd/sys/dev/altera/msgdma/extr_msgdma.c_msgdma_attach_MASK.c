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
struct msgdma_softc {int /*<<< orphan*/  ih; int /*<<< orphan*/ * res; void* bsh_d; void* bst_d; void* bsh; void* bst; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_GIEM ; 
 int /*<<< orphan*/  DMA_CONTROL ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msgdma_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct msgdma_softc*,int /*<<< orphan*/ *) ; 
 struct msgdma_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  msgdma_intr ; 
 scalar_t__ FUNC7 (struct msgdma_softc*) ; 
 int /*<<< orphan*/  msgdma_spec ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct msgdma_softc *sc;
	phandle_t xref, node;
	int err;

	sc = FUNC5(dev);
	sc->dev = dev;

	if (FUNC3(dev, msgdma_spec, sc->res)) {
		FUNC6(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	/* CSR memory interface */
	sc->bst = FUNC10(sc->res[0]);
	sc->bsh = FUNC9(sc->res[0]);

	/* Descriptor memory interface */
	sc->bst_d = FUNC10(sc->res[1]);
	sc->bsh_d = FUNC9(sc->res[1]);

	/* Setup interrupt handler */
	err = FUNC4(dev, sc->res[2], INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, msgdma_intr, sc, &sc->ih);
	if (err) {
		FUNC6(dev, "Unable to alloc interrupt resource.\n");
		return (ENXIO);
	}

	node = FUNC8(dev);
	xref = FUNC1(node);
	FUNC0(xref, dev);

	if (FUNC7(sc) != 0)
		return (-1);

	FUNC2(sc, DMA_CONTROL, CONTROL_GIEM);

	return (0);
}