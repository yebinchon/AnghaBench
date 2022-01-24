#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int nisodma; int /*<<< orphan*/ * taskqueue; int /*<<< orphan*/  task_timeout; int /*<<< orphan*/ * config_rom; } ;
struct fwohci_softc {TYPE_1__ fc; int /*<<< orphan*/  fwohci_task_dma; int /*<<< orphan*/  fwohci_task_sid; int /*<<< orphan*/  fwohci_task_busreset; int /*<<< orphan*/ * ir; int /*<<< orphan*/ * it; int /*<<< orphan*/  atrs; int /*<<< orphan*/  atrq; int /*<<< orphan*/  arrs; int /*<<< orphan*/  arrq; int /*<<< orphan*/  crom_dma; int /*<<< orphan*/  sid_dma; int /*<<< orphan*/ * sid_buf; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct fwohci_softc *sc, device_t dev)
{
	int i;

	if (sc->sid_buf != NULL)
		FUNC0(&sc->fc, &sc->sid_dma);
	if (sc->fc.config_rom != NULL)
		FUNC0(&sc->fc, &sc->crom_dma);

	FUNC1(&sc->arrq);
	FUNC1(&sc->arrs);

	FUNC1(&sc->atrq);
	FUNC1(&sc->atrs);

	for (i = 0; i < sc->fc.nisodma; i++) {
		FUNC1(&sc->it[i]);
		FUNC1(&sc->ir[i]);
	}
	if (sc->fc.taskqueue != NULL) {
		FUNC2(sc->fc.taskqueue, &sc->fwohci_task_busreset);
		FUNC2(sc->fc.taskqueue, &sc->fwohci_task_sid);
		FUNC2(sc->fc.taskqueue, &sc->fwohci_task_dma);
		FUNC2(sc->fc.taskqueue, &sc->fc.task_timeout);
		FUNC3(sc->fc.taskqueue);
		sc->fc.taskqueue = NULL;
	}

	return 0;
}