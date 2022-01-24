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
typedef  size_t u_int ;
struct trapframe {int dummy; } ;
struct intsrc {scalar_t__ is_pic; int /*<<< orphan*/ * is_event; } ;
struct atpic {int at_ioaddr; } ;
struct TYPE_2__ {struct intsrc at_intsrc; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 size_t NUM_ISA_IRQS ; 
 int OCW3_RIS ; 
 int OCW3_RR ; 
 int OCW3_SEL ; 
 TYPE_1__* atintrs ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct intsrc*,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(u_int vector, struct trapframe *frame)
{
	struct intsrc *isrc;

	FUNC1(vector < NUM_ISA_IRQS, ("unknown int %u\n", vector));
	isrc = &atintrs[vector].at_intsrc;

	/*
	 * If we don't have an event, see if this is a spurious
	 * interrupt.
	 */
	if (isrc->is_event == NULL && (vector == 7 || vector == 15)) {
		int port, isr;

		/*
		 * Read the ISR register to see if IRQ 7/15 is really
		 * pending.  Reset read register back to IRR when done.
		 */
		port = ((struct atpic *)isrc->is_pic)->at_ioaddr;
		FUNC5();
		FUNC4(port, OCW3_SEL | OCW3_RR | OCW3_RIS);
		isr = FUNC2(port);
		FUNC4(port, OCW3_SEL | OCW3_RR);
		FUNC6();
		if ((isr & FUNC0(7)) == 0)
			return;
	}
	FUNC3(isrc, frame);
}