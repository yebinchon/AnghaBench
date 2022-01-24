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
typedef  int uint64_t ;
struct trapframe {int dummy; } ;
struct intr_event {int dummy; } ;
typedef  int /*<<< orphan*/  eirr ;
struct TYPE_2__ {struct intr_event* ie; } ;

/* Variables and functions */
#define  IRQ_IPI 129 
#define  IRQ_MSGRING 128 
 int IRQ_TIMER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct intr_event*,struct trapframe*) ; 
 int /*<<< orphan*/ * mips_intr_counters ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 TYPE_1__* xlp_interrupts ; 

void
FUNC8(struct trapframe *tf)
{
	struct intr_event *ie;
	uint64_t eirr, eimr;
	int i;

	FUNC0();

	/* find a list of enabled interrupts */
	eirr = FUNC5();
	eimr = FUNC4();
	eirr &= eimr;

	if (eirr == 0) {
		FUNC1();
		return;
	}
	/*
	 * No need to clear the EIRR here as the handler writes to
	 * compare which ACKs the interrupt.
	 */
	if (eirr & (1 << IRQ_TIMER)) {
		FUNC2(xlp_interrupts[IRQ_TIMER].ie, tf);
		FUNC1();
		return;
	}

	/* FIXME sched pin >? LOCK>? */
	for (i = sizeof(eirr) * 8 - 1; i >= 0; i--) {
		if ((eirr & (1ULL << i)) == 0)
			continue;

		ie = xlp_interrupts[i].ie;
		/* Don't account special IRQs */
		switch (i) {
		case IRQ_IPI:
		case IRQ_MSGRING:
			break;
		default:
			FUNC3(mips_intr_counters[i]);
		}

		/* Ack the IRQ on the CPU */
		FUNC6(1ULL << i);
		if (FUNC2(ie, tf) != 0) {
			FUNC7("stray interrupt %d\n", i);
		}
	}
	FUNC1();
}