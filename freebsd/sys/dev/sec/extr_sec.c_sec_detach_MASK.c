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
struct sec_softc {int sc_shutdown; int /*<<< orphan*/  sc_descriptors_lock; int /*<<< orphan*/  sc_controller_lock; int /*<<< orphan*/ * sc_rres; int /*<<< orphan*/  sc_rrid; int /*<<< orphan*/  sc_sec_irid; int /*<<< orphan*/  sc_sec_ihand; int /*<<< orphan*/  sc_sec_ires; int /*<<< orphan*/  sc_pri_irid; int /*<<< orphan*/  sc_pri_ihand; int /*<<< orphan*/  sc_pri_ires; int /*<<< orphan*/  sc_desc_dmem; int /*<<< orphan*/  sc_lt_dmem; int /*<<< orphan*/ * sc_desc; int /*<<< orphan*/  sc_cid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SEC_CHANNELS ; 
 int SEC_DESCRIPTORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEC_IER ; 
 int /*<<< orphan*/  FUNC2 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sec_softc*) ; 
 int FUNC4 (struct sec_softc*) ; 
 int SEC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC5 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  descriptors ; 
 struct sec_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sec_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct sec_softc *sc = FUNC9(dev);
	int i, error, timeout = SEC_TIMEOUT;

	/* Prepare driver to shutdown */
	FUNC2(sc, descriptors);
	sc->sc_shutdown = 1;
	FUNC5(sc, descriptors);

	/* Wait until all queued processing finishes */
	while (1) {
		FUNC2(sc, descriptors);
		i = FUNC4(sc) + FUNC3(sc);
		FUNC5(sc, descriptors);

		if (i == 0)
			break;

		if (timeout < 0) {
			FUNC10(dev, "queue flush timeout!\n");

			/* DMA can be still active - stop it */
			for (i = 0; i < SEC_CHANNELS; i++)
				FUNC12(sc, i, 1);

			break;
		}

		timeout -= 1000;
		FUNC0(1000);
	}

	/* Disable interrupts */
	FUNC6(sc, SEC_IER, 0);

	/* Unregister from OCF */
	FUNC8(sc->sc_cid);

	/* Free DMA memory */
	for (i = 0; i < SEC_DESCRIPTORS; i++)
		FUNC1(&(sc->sc_desc[i]));

	FUNC13(&(sc->sc_lt_dmem));
	FUNC13(&(sc->sc_desc_dmem));

	/* Release interrupts */
	FUNC14(sc, sc->sc_pri_ires, sc->sc_pri_ihand,
	    sc->sc_pri_irid, "primary");
	FUNC14(sc, sc->sc_sec_ires, sc->sc_sec_ihand,
	    sc->sc_sec_irid, "secondary");

	/* Release memory */
	if (sc->sc_rres) {
		error = FUNC7(dev, SYS_RES_MEMORY, sc->sc_rrid,
		    sc->sc_rres);
		if (error)
			FUNC10(dev, "bus_release_resource() failed for"
			    " I/O memory, error %d\n", error);

		sc->sc_rres = NULL;
	}

	FUNC11(&sc->sc_controller_lock);
	FUNC11(&sc->sc_descriptors_lock);

	return (0);
}