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
typedef  scalar_t__ uint32_t ;
struct viawd_softc {int /*<<< orphan*/ * wd_res; int /*<<< orphan*/  wd_rid; int /*<<< orphan*/  ev_tag; int /*<<< orphan*/ * sb_dev; int /*<<< orphan*/ * dev; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct viawd_softc*,int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  VIAWD_CONFIG_BASE ; 
 int /*<<< orphan*/  VIAWD_MEM_CTRL ; 
 scalar_t__ VIAWD_MEM_CTRL_FIRED ; 
 scalar_t__ VIAWD_MEM_LEN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 struct viawd_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  viawd_event ; 
 scalar_t__ FUNC8 (struct viawd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct viawd_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  watchdog_list ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	device_t sb_dev;
	struct viawd_softc *sc;
	uint32_t pmbase, reg;

	sc = FUNC4(dev);
	sc->dev = dev;

	sb_dev = FUNC3(dev);
	if (sb_dev == NULL) {
		FUNC5(dev, "Can not find watchdog device.\n");
		goto fail;
	}
	sc->sb_dev = sb_dev;

	/* Get watchdog memory base. */
	pmbase = FUNC6(sb_dev, VIAWD_CONFIG_BASE, 4);
	if (pmbase == 0) {
		FUNC5(dev,
		    "Watchdog disabled in BIOS or hardware\n");
		goto fail;
	}

	/* Allocate I/O register space. */
	sc->wd_rid = VIAWD_CONFIG_BASE;
	sc->wd_res = FUNC1(sb_dev, SYS_RES_MEMORY, &sc->wd_rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->wd_res == NULL) {
		FUNC5(dev, "Unable to map watchdog memory\n");
		goto fail;
	}
	if (FUNC7(sc->wd_res) < VIAWD_MEM_LEN) {
		FUNC5(dev, "Bad size for watchdog memory: %#x\n",
		    (unsigned)FUNC7(sc->wd_res));
		goto fail;
	}

	/* Check if watchdog fired last boot. */
	reg = FUNC8(sc, VIAWD_MEM_CTRL);
	if (reg & VIAWD_MEM_CTRL_FIRED) {
		FUNC5(dev,
		    "ERROR: watchdog rebooted the system\n");
		/* Reset bit state. */
		FUNC9(sc, VIAWD_MEM_CTRL, reg);
	}

	/* Register the watchdog event handler. */
	sc->ev_tag = FUNC0(watchdog_list, viawd_event, sc, 0);

	return (0);
fail:
	if (sc->wd_res != NULL)
		FUNC2(sb_dev, SYS_RES_MEMORY,
		    sc->wd_rid, sc->wd_res);
	return (ENXIO);
}