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
struct at45d_softc {scalar_t__ taskstate; int /*<<< orphan*/  dummybuf; int /*<<< orphan*/  bio_queue; scalar_t__ disk; int /*<<< orphan*/  dev; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct at45d_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct at45d_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct at45d_softc*) ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 scalar_t__ TSTATE_RUNNING ; 
 scalar_t__ TSTATE_STOPPED ; 
 scalar_t__ TSTATE_STOPPING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct at45d_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int hz ; 
 int FUNC8 (struct at45d_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct at45d_softc*) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct at45d_softc *sc;
	int err;

	sc = FUNC4(dev);
	err = 0;

	FUNC0(sc);
	if (sc->taskstate == TSTATE_RUNNING) {
		sc->taskstate = TSTATE_STOPPING;
		FUNC9(sc);
		while (err == 0 && sc->taskstate != TSTATE_STOPPED) {
			err = FUNC8(sc, &sc->sc_mtx, 0, "at45dt", hz * 3);
			if (err != 0) {
				sc->taskstate = TSTATE_RUNNING;
				FUNC5(sc->dev,
				    "Failed to stop queue task\n");
			}
		}
	}
	FUNC2(sc);

	if (err == 0 && sc->taskstate == TSTATE_STOPPED) {
		if (sc->disk) {
			FUNC6(sc->disk);
			FUNC3(&sc->bio_queue, NULL, ENXIO);
			FUNC7(sc->dummybuf, M_DEVBUF);
		}
		FUNC1(sc);
	}
	return (err);
}