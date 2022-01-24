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
struct trapframe {int dummy; } ;
struct intr_event {int /*<<< orphan*/  ie_handlers; } ;
typedef  int register_t ;
struct TYPE_3__ {int td_pflags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int MIPS_INT_MASK ; 
 int /*<<< orphan*/  NSOFT_IRQS ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PMC_FN_USER_CALLCHAIN ; 
 int TDP_CALLCHAIN ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC5 (int) ; 
 struct intr_event** hardintr_events ; 
 scalar_t__ FUNC6 (struct intr_event*,struct trapframe*) ; 
 int /*<<< orphan*/ * mips_intr_counters ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 struct intr_event** softintr_events ; 

void
FUNC12(struct trapframe *tf)
{
	struct intr_event *event;
	register_t cause, status;
	int hard, i, intr;

	FUNC3();

	cause = FUNC8();
	status = FUNC9();
	intr = (cause & MIPS_INT_MASK) >> 8;
	/*
	 * Do not handle masked interrupts. They were masked by 
	 * pre_ithread function (mips_mask_XXX_intr) and will be 
	 * unmasked once ithread is through with handler
	 */
	intr &= (status & MIPS_INT_MASK) >> 8;
	while ((i = FUNC5(intr)) != 0) {
		intr &= ~(1 << (i - 1));
		switch (i) {
		case 1: case 2:
			/* Software interrupt. */
			i--; /* Get a 0-offset interrupt. */
			hard = 0;
			event = softintr_events[i];
			FUNC7(mips_intr_counters[i]);
			break;
		default:
			/* Hardware interrupt. */
			i -= 2; /* Trim software interrupt bits. */
			i--; /* Get a 0-offset interrupt. */
			hard = 1;
			event = hardintr_events[i];
			FUNC7(mips_intr_counters[NSOFT_IRQS + i]);
			break;
		}

		if (!event || FUNC0(&event->ie_handlers)) {
			FUNC11("stray %s interrupt %d\n",
			    hard ? "hard" : "soft", i);
			continue;
		}

		if (FUNC6(event, tf) != 0) {
			FUNC11("stray %s interrupt %d\n", 
			    hard ? "hard" : "soft", i);
		}
	}

	FUNC1(i == 0, ("all interrupts handled"));

	FUNC4();

#ifdef HWPMC_HOOKS
	if (pmc_hook && (PCPU_GET(curthread)->td_pflags & TDP_CALLCHAIN))
		pmc_hook(PCPU_GET(curthread), PMC_FN_USER_CALLCHAIN, tf);
#endif
}