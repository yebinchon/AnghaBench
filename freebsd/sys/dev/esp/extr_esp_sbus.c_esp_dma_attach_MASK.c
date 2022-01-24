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
struct ncr53c9x_softc {int /*<<< orphan*/  sc_freq; } ;
struct lsi64854_softc {struct ncr53c9x_softc* sc_client; } ;
struct esp_softc {int /*<<< orphan*/ * sc_res; struct lsi64854_softc* sc_dma; int /*<<< orphan*/  sc_dev; struct ncr53c9x_softc sc_ncr53c9x; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct esp_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  esp_sbus_glue ; 
 int FUNC6 (struct esp_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct esp_softc *esc;
	struct ncr53c9x_softc *sc;
	int error, i;

	esc = FUNC4(dev);
	sc = &esc->sc_ncr53c9x;

	esc->sc_dev = dev;
	if (FUNC0(FUNC7(dev), "clock-frequency",
	    &sc->sc_freq, sizeof(sc->sc_freq)) == -1) {
		FUNC8("failed to query OFW for clock-frequency\n");
		return (ENXIO);
	}

	/* XXX hackery */
	esc->sc_dma = (struct lsi64854_softc *)
	    FUNC4(FUNC3(dev));
	esc->sc_dma->sc_client = sc;

	/*
	 * Allocate SCSI core registers.
	 */
	i = 0;
	if ((esc->sc_res = FUNC1(dev, SYS_RES_MEMORY,
	    &i, RF_ACTIVE)) == NULL) {
		FUNC5(dev, "cannot allocate SCSI core registers\n");
		return (ENXIO);
	}

	error = FUNC6(esc, &esp_sbus_glue);
	if (error != 0) {
		FUNC5(dev, "espattach failed\n");
		goto fail_dma_eres;
	}

	return (0);

 fail_dma_eres:
	FUNC2(dev, SYS_RES_MEMORY, FUNC9(esc->sc_res),
	    esc->sc_res);
	return (error);
}