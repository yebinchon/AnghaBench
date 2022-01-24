#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * esb_res; int /*<<< orphan*/  esb_handle; int /*<<< orphan*/  esb_tag; int /*<<< orphan*/  esb_rid; } ;
struct sfxge_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  mem_bar; TYPE_1__ bar; } ;
typedef  TYPE_1__ efsys_bar_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct sfxge_softc *sc)
{
	efsys_bar_t *esbp = &sc->bar;

	esbp->esb_rid = FUNC0(sc->mem_bar);
	if ((esbp->esb_res = FUNC2(sc->dev, SYS_RES_MEMORY,
	    &esbp->esb_rid, RF_ACTIVE)) == NULL) {
		FUNC4(sc->dev, "Cannot allocate BAR region %d\n",
		    sc->mem_bar);
		return (ENXIO);
	}
	esbp->esb_tag = FUNC6(esbp->esb_res);
	esbp->esb_handle = FUNC5(esbp->esb_res);

	FUNC1(esbp, FUNC3(sc->dev));

	return (0);
}