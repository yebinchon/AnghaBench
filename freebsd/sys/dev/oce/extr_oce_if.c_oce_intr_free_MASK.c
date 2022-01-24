#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int intr_count; int flags; int /*<<< orphan*/  dev; TYPE_1__* intrs; } ;
struct TYPE_4__ {int /*<<< orphan*/ * intr_res; int /*<<< orphan*/ * tag; int /*<<< orphan*/  irq_rr; int /*<<< orphan*/ * tq; } ;
typedef  TYPE_2__* POCE_SOFTC ;

/* Variables and functions */
 int OCE_FLAGS_USING_MSIX ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(POCE_SOFTC sc)
{
	int i = 0;
	
	for (i = 0; i < sc->intr_count; i++) {
		
		if (sc->intrs[i].tag != NULL)
			FUNC1(sc->dev, sc->intrs[i].intr_res,
						sc->intrs[i].tag);
		if (sc->intrs[i].tq != NULL)
			FUNC3(sc->intrs[i].tq);
		
		if (sc->intrs[i].intr_res != NULL)
			FUNC0(sc->dev, SYS_RES_IRQ,
						sc->intrs[i].irq_rr,
						sc->intrs[i].intr_res);
		sc->intrs[i].tag = NULL;
		sc->intrs[i].intr_res = NULL;
	}

	if (sc->flags & OCE_FLAGS_USING_MSIX)
		FUNC2(sc->dev);

}