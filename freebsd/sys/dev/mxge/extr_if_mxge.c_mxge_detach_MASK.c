#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int dying; int /*<<< orphan*/  parent_dmat; TYPE_9__* ifp; int /*<<< orphan*/  driver_mtx; int /*<<< orphan*/  cmd_mtx; int /*<<< orphan*/  mem_res; int /*<<< orphan*/  cmd_dma; int /*<<< orphan*/  zeropad_dma; int /*<<< orphan*/  dmabench_dma; int /*<<< orphan*/  media; int /*<<< orphan*/  co_hdl; int /*<<< orphan*/ * tq; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ mxge_softc_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_13__ {int if_drv_flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  PCIR_BARS ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC22(device_t dev)
{
	mxge_softc_t *sc = FUNC3(dev);

	if (FUNC18(sc)) {
		FUNC4(sc->dev,
			      "Detach vlans before removing module\n");
		return EBUSY;
	}
	FUNC9(&sc->driver_mtx);
	sc->dying = 1;
	if (sc->ifp->if_drv_flags & IFF_DRV_RUNNING)
		FUNC11(sc, 0);
	FUNC10(&sc->driver_mtx);
	FUNC5(sc->ifp);
	if (sc->tq != NULL) {
		FUNC20(sc->tq, &sc->watchdog_task);
		FUNC21(sc->tq);
		sc->tq = NULL;
	}
	FUNC2(&sc->co_hdl);
	FUNC7(&sc->media);
	FUNC13(sc, 0);
	FUNC17(sc);
	FUNC16(sc);
	FUNC14(sc);
	FUNC15(sc);
	FUNC12(&sc->dmabench_dma);
	FUNC12(&sc->zeropad_dma);
	FUNC12(&sc->cmd_dma);
	FUNC1(dev, SYS_RES_MEMORY, PCIR_BARS, sc->mem_res);
	FUNC19(dev);
	FUNC8(&sc->cmd_mtx);
	FUNC8(&sc->driver_mtx);
	FUNC6(sc->ifp);
	FUNC0(sc->parent_dmat);
	return 0;
}