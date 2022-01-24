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
struct ichwd_softc {int /*<<< orphan*/ * gc_res; int /*<<< orphan*/  gc_rid; int /*<<< orphan*/ * gcs_res; int /*<<< orphan*/  gcs_rid; int /*<<< orphan*/  ich; int /*<<< orphan*/ * smi_res; int /*<<< orphan*/  smi_rid; int /*<<< orphan*/ * tco_res; int /*<<< orphan*/  tco_rid; int /*<<< orphan*/  smi_enabled; int /*<<< orphan*/  ev_tag; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ichwd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TCO2_STS ; 
 int TCO_SECOND_TO_STS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ichwd_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct ichwd_softc*) ; 
 int /*<<< orphan*/  ichwd_event ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ichwd_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ichwd_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ichwd_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ichwd_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ichwd_softc*) ; 
 int /*<<< orphan*/  watchdog_list ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct ichwd_softc *sc;

	sc = FUNC2(dev);
	sc->device = dev;

	if (FUNC5(dev) != 0 && FUNC7(dev) != 0)
		goto fail;

	if (FUNC4(sc) != 0)
		goto fail;

	/*
	 * Determine if we are coming up after a watchdog-induced reset.  Some
	 * BIOSes may clear this bit at bootup, preventing us from reporting
	 * this case on such systems.  We clear this bit in ichwd_sts_reset().
	 */
	if ((FUNC6(sc, TCO2_STS) & TCO_SECOND_TO_STS) != 0)
		FUNC3(dev,
		    "resuming after hardware watchdog timeout\n");

	/* reset the watchdog status registers */
	FUNC10(sc);

	/* make sure the WDT starts out inactive */
	FUNC11(sc);

	/* register the watchdog event handler */
	sc->ev_tag = FUNC0(watchdog_list, ichwd_event, sc, 0);

	/* disable the SMI handler */
	sc->smi_enabled = FUNC9(sc);
	FUNC8(sc);

	return (0);
 fail:
	sc = FUNC2(dev);
	if (sc->tco_res != NULL)
		FUNC1(dev, SYS_RES_IOPORT,
		    sc->tco_rid, sc->tco_res);
	if (sc->smi_res != NULL)
		FUNC1(dev, SYS_RES_IOPORT,
		    sc->smi_rid, sc->smi_res);
	if (sc->gcs_res != NULL)
		FUNC1(sc->ich, SYS_RES_MEMORY,
		    sc->gcs_rid, sc->gcs_res);
	if (sc->gc_res != NULL)
		FUNC1(dev, SYS_RES_MEMORY,
		    sc->gc_rid, sc->gc_res);

	return (ENXIO);
}