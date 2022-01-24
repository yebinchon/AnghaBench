#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct trapframe {int dummy; } ;
struct mips_pic_softc {int /*<<< orphan*/  pic_dev; } ;
typedef  int register_t ;
struct TYPE_6__ {int /*<<< orphan*/  td_intr_frame; } ;
struct TYPE_5__ {int td_pflags; struct trapframe* td_intr_frame; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MIPS_INT_MASK ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mips_pic_softc*,int) ; 
 int /*<<< orphan*/  PMC_FN_USER_CALLCHAIN ; 
 int TDP_CALLCHAIN ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct mips_pic_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct trapframe*) ; 

int
FUNC10(void *arg)
{
	struct mips_pic_softc *sc = arg;
	register_t cause, status;
	int i, intr;

	cause = FUNC6();
	status = FUNC7();
	intr = (cause & MIPS_INT_MASK) >> 8;
	/*
	 * Do not handle masked interrupts. They were masked by
	 * pre_ithread function (mips_mask_XXX_intr) and will be
	 * unmasked once ithread is through with handler
	 */
	intr &= (status & MIPS_INT_MASK) >> 8;
	while ((i = FUNC4(intr)) != 0) {
		i--; /* Get a 0-offset interrupt. */
		intr &= ~(1 << i);

		if (FUNC5(FUNC2(sc, i),
		    curthread->td_intr_frame) != 0) {
			FUNC3(sc->pic_dev,
			    "Stray interrupt %u detected\n", i);
			FUNC8(sc, i);
			continue;
		}
	}

	FUNC0(i == 0, ("all interrupts handled"));

#ifdef HWPMC_HOOKS
	if (pmc_hook && (PCPU_GET(curthread)->td_pflags & TDP_CALLCHAIN)) {
		struct trapframe *tf = PCPU_GET(curthread)->td_intr_frame;

		pmc_hook(PCPU_GET(curthread), PMC_FN_USER_CALLCHAIN, tf);
	}
#endif
	return (FILTER_HANDLED);
}