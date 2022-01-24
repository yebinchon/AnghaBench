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
struct mambodisk_softc {int running; int /*<<< orphan*/  disk; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mambodisk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mambodisk_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mambodisk_softc*) ; 
 int /*<<< orphan*/  PRIBIO ; 
 struct mambodisk_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mambodisk_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mambodisk_softc*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct mambodisk_softc *sc = FUNC3(dev);

	/* kill thread */
	FUNC0(sc);
	sc->running = 0;
	FUNC6(sc);
	FUNC2(sc);

	/* wait for thread to finish.  XXX probably want timeout.  -sorbo */
	FUNC0(sc);
	while (sc->running != -1)
		FUNC5(sc, &sc->sc_mtx, PRIBIO, "detach", 0);
	FUNC2(sc);

	/* kill disk */
	FUNC4(sc->disk);
	/* XXX destroy anything in queue */

	FUNC1(sc);

	return (0);
}