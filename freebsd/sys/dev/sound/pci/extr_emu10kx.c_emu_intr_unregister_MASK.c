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
typedef  int /*<<< orphan*/  uint32_t ;
struct emu_sc_info {int /*<<< orphan*/  lock; TYPE_1__* ihandler; } ;
struct TYPE_2__ {int /*<<< orphan*/  inte_mask; int /*<<< orphan*/ * irq_func; int /*<<< orphan*/ * softc; scalar_t__ intr_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMU_INTE ; 
 int EMU_MAX_IRQ_CONSUMERS ; 
 int /*<<< orphan*/  FUNC0 (struct emu_sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct emu_sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct emu_sc_info *sc, int hnumber)
{
	uint32_t x;
	int i;

	FUNC2(&sc->lock);

	if (sc->ihandler[hnumber].inte_mask == 0) {
		FUNC3(&sc->lock);
		return (-1);
	}

	x = FUNC0(sc, EMU_INTE, 4);
	x &= ~sc->ihandler[hnumber].inte_mask;

	sc->ihandler[hnumber].inte_mask = 0;
	sc->ihandler[hnumber].intr_mask = 0;
	sc->ihandler[hnumber].softc = NULL;
	sc->ihandler[hnumber].irq_func = NULL;

	/* other interrupt handlers may use this EMU_INTE value */
	for (i = 0; i < EMU_MAX_IRQ_CONSUMERS; i++)
		if (sc->ihandler[i].inte_mask != 0)
			x |= sc->ihandler[i].inte_mask;

	FUNC1(sc, EMU_INTE, x, 4);

	FUNC3(&sc->lock);
	return (hnumber);
}