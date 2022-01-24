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
struct ow_temp_softc {int temp; int bad_crc; int bad_reads; int reading_interval; int parasite; int /*<<< orphan*/  event_thread; int /*<<< orphan*/  temp_lock; int /*<<< orphan*/  type; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ow_temp_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct ow_temp_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ow_temp_event_thread ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  sysctl_handle_int ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct ow_temp_softc *sc;

	sc = FUNC4(dev);
	sc->dev = dev;
	sc->type = FUNC10(dev);
	FUNC1(FUNC5(dev),
	    FUNC2(FUNC6(dev)),
	    OID_AUTO, "temperature", CTLFLAG_RD | CTLTYPE_INT,
	    &sc->temp, 0, sysctl_handle_int,
	    "IK3", "Current Temperature");
	FUNC0(FUNC5(dev),
	    FUNC2(FUNC6(dev)),
	    OID_AUTO, "badcrc", CTLFLAG_RD,
	    &sc->bad_crc, 0,
	    "Number of Bad CRC on reading scratchpad");
	FUNC0(FUNC5(dev),
	    FUNC2(FUNC6(dev)),
	    OID_AUTO, "badread", CTLFLAG_RD,
	    &sc->bad_reads, 0,
	    "Number of errors on reading scratchpad");
	FUNC0(FUNC5(dev),
	    FUNC2(FUNC6(dev)),
	    OID_AUTO, "reading_interval", CTLFLAG_RW,
	    &sc->reading_interval, 0,
	    "ticks between reads");
	FUNC0(FUNC5(dev),
	    FUNC2(FUNC6(dev)),
	    OID_AUTO, "parasite", CTLFLAG_RW,
	    &sc->parasite, 0,
	    "In Parasite mode");
	/*
	 * Just do this for unit 0 to avoid locking
	 * the ow bus until that code can be put
	 * into place.
	 */
	sc->temp = -1;
	sc->reading_interval = 10 * hz;
	FUNC9(&sc->temp_lock, "lock for doing temperature", NULL, MTX_DEF);
	/* Start the thread */
	if (FUNC8(ow_temp_event_thread, sc, &sc->event_thread, 0, 0,
	    "%s event thread", FUNC3(dev))) {
		FUNC7(dev, "unable to create event thread.\n");
		FUNC11("ow_temp_attach, can't create thread");
	}

	return 0;
}