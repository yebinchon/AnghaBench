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
struct mmcnull_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  tick; int /*<<< orphan*/ * devq; int /*<<< orphan*/ * sim; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  sim_action_func ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mmcnull_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mmcnull_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ is_sdio_mode ; 
 int /*<<< orphan*/  mmcnull_action_sd ; 
 int /*<<< orphan*/  mmcnull_action_sdio ; 
 int /*<<< orphan*/  mmcnull_poll ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct mmcnull_softc *sc;
	sim_action_func action_func;

	sc = FUNC5(dev);
	sc->dev = dev;

	FUNC8(&sc->sc_mtx, "mmcnullmtx", NULL, MTX_DEF);

	if ((sc->devq = FUNC3(1)) == NULL)
		return (ENOMEM);

	if (is_sdio_mode)
		action_func = mmcnull_action_sdio;
	else
		action_func = mmcnull_action_sd;
	sc->sim = FUNC1(action_func, mmcnull_poll, "mmcnull", sc,
				FUNC6(dev), &sc->sc_mtx, 1, 1,
				sc->devq);

	if (sc->sim == NULL) {
		FUNC4(sc->devq);
		FUNC7(dev, "cannot allocate CAM SIM\n");
		return (EINVAL);
	}

	FUNC9(&sc->sc_mtx);
	if (FUNC11(sc->sim, dev, 0) != 0) {
		FUNC7(dev,
			      "cannot register SCSI pass-through bus\n");
		FUNC2(sc->sim, FALSE);
		FUNC4(sc->devq);
		FUNC10(&sc->sc_mtx);
		return (EINVAL);
	}
	FUNC10(&sc->sc_mtx);

	FUNC0(&sc->tick, &sc->sc_mtx, 0);	/* Callout to emulate interrupts */

	FUNC7(dev, "attached OK\n");

	return (0);
}