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
struct n25q_softc {scalar_t__ sc_taskstate; int /*<<< orphan*/  sc_bio_queue; int /*<<< orphan*/  sc_disk; int /*<<< orphan*/  dev; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct n25q_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct n25q_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct n25q_softc*) ; 
 scalar_t__ TSTATE_RUNNING ; 
 scalar_t__ TSTATE_STOPPED ; 
 scalar_t__ TSTATE_STOPPING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct n25q_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int FUNC7 (struct n25q_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct n25q_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct n25q_softc *sc;
	int err;

	sc = FUNC4(dev);
	err = 0;

	FUNC0(sc);
	if (sc->sc_taskstate == TSTATE_RUNNING) {
		sc->sc_taskstate = TSTATE_STOPPING;
		FUNC8(sc);
		while (err == 0 && sc->sc_taskstate != TSTATE_STOPPED) {
			err = FUNC7(sc, &sc->sc_mtx, 0, "n25q", hz * 3);
			if (err != 0) {
				sc->sc_taskstate = TSTATE_RUNNING;
				FUNC5(sc->dev,
				    "Failed to stop queue task\n");
			}
		}
	}
	FUNC2(sc);

	if (err == 0 && sc->sc_taskstate == TSTATE_STOPPED) {
		FUNC6(sc->sc_disk);
		FUNC3(&sc->sc_bio_queue, NULL, ENXIO);
		FUNC1(sc);
	}
	return (err);
}