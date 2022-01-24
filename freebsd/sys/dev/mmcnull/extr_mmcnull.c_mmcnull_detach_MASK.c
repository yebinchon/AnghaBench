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
struct mmcnull_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  tick; int /*<<< orphan*/ * devq; int /*<<< orphan*/ * sim; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mmcnull_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct mmcnull_softc *sc;

	sc = FUNC4(dev);

	if (sc == NULL)
		return (EINVAL);

	if (sc->sim != NULL) {
		FUNC7(&sc->sc_mtx);
		FUNC9(FUNC2(sc->sim));
		FUNC1(sc->sim, FALSE);
		FUNC8(&sc->sc_mtx);
	}

	if (sc->devq != NULL)
		FUNC3(sc->devq);

	FUNC0(&sc->tick);
	FUNC6(&sc->sc_mtx);

	FUNC5(dev, "detached OK\n");
	return (0);
}