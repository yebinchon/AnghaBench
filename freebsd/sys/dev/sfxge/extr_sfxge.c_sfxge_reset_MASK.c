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
struct sfxge_softc {scalar_t__ init_state; int /*<<< orphan*/  dev; int /*<<< orphan*/  enp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_softc*) ; 
 scalar_t__ SFXGE_STARTED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int sfxge_restart_attempts ; 
 int FUNC5 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct sfxge_softc*) ; 

__attribute__((used)) static void
FUNC7(void *arg, int npending)
{
	struct sfxge_softc *sc;
	int rc;
	unsigned attempt;

	(void)npending;

	sc = (struct sfxge_softc *)arg;

	FUNC1(sc);

	if (sc->init_state != SFXGE_STARTED)
		goto done;

	FUNC6(sc);
	FUNC4(sc->enp);
	for (attempt = 0; attempt < sfxge_restart_attempts; ++attempt) {
		if ((rc = FUNC5(sc)) == 0)
			goto done;

		FUNC3(sc->dev, "start on reset failed (%d)\n", rc);
		FUNC0(100000);
	}

	FUNC3(sc->dev, "reset failed; interface is now stopped\n");

done:
	FUNC2(sc);
}