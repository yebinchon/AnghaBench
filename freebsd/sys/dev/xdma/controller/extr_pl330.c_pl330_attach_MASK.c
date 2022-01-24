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
struct pl330_softc {int /*<<< orphan*/ * ih; int /*<<< orphan*/ ** res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PL330_NCHANNELS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pl330_softc*,int /*<<< orphan*/ ) ; 
 struct pl330_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pl330_intr ; 
 int /*<<< orphan*/  pl330_spec ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct pl330_softc *sc;
	phandle_t xref, node;
	int err;
	int i;

	sc = FUNC4(dev);
	sc->dev = dev;

	if (FUNC2(dev, pl330_spec, sc->res)) {
		FUNC5(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	/* Setup interrupt handler */
	for (i = 0; i < PL330_NCHANNELS; i++) {
		if (sc->res[i + 1] == NULL)
			break;
		err = FUNC3(dev, sc->res[i + 1], INTR_TYPE_MISC | INTR_MPSAFE,
		    NULL, pl330_intr, sc, sc->ih[i]);
		if (err) {
			FUNC5(dev, "Unable to alloc interrupt resource.\n");
			return (ENXIO);
		}
	}

	node = FUNC6(dev);
	xref = FUNC1(node);
	FUNC0(xref, dev);

	return (0);
}