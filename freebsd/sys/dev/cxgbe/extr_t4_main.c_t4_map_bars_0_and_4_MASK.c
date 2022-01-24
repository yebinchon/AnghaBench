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
struct adapter {int /*<<< orphan*/  dev; int /*<<< orphan*/ * msix_res; void* msix_rid; int /*<<< orphan*/  doorbells; int /*<<< orphan*/ * regs_res; int /*<<< orphan*/  mmio_len; int /*<<< orphan*/  bh; int /*<<< orphan*/  bt; void* regs_rid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOORBELL_KDB ; 
 int ENXIO ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC7(struct adapter *sc)
{
	sc->regs_rid = FUNC0(0);
	sc->regs_res = FUNC1(sc->dev, SYS_RES_MEMORY,
	    &sc->regs_rid, RF_ACTIVE);
	if (sc->regs_res == NULL) {
		FUNC2(sc->dev, "cannot map registers.\n");
		return (ENXIO);
	}
	sc->bt = FUNC4(sc->regs_res);
	sc->bh = FUNC3(sc->regs_res);
	sc->mmio_len = FUNC5(sc->regs_res);
	FUNC6(&sc->doorbells, DOORBELL_KDB);

	sc->msix_rid = FUNC0(4);
	sc->msix_res = FUNC1(sc->dev, SYS_RES_MEMORY,
	    &sc->msix_rid, RF_ACTIVE);
	if (sc->msix_res == NULL) {
		FUNC2(sc->dev, "cannot map MSI-X BAR.\n");
		return (ENXIO);
	}

	return (0);
}